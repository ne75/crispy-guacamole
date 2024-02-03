mod fdtp;
use fdtp::{FDPacket, DataPoint, DataPointValue, FCv1Packet};
use socket2::{Socket, Domain, Type};
use std::net::Ipv4Addr;
use std::net::{SocketAddr, UdpSocket};
use std::str;
use std::collections::HashMap;

struct Node {
    source_ip: SocketAddr,
    messages: HashMap<String, FDPacket>
}

// struct TelemListener {
//     socket: UdpSocket,
//     nodes: Dict<Node>
// }

// impl TelemListener {
//     fn () {
        
//     }
// }

// we want to store a list of all nodes we've seen.
// each node in that list should store it's IP address and a list of 
// FDpackets, each one of a different message type. 

// upon receiving a packet, check if that node is already in our list
// (by name and IP)
// if it is, grab a reference to that node, update the corresponding message type packet
// with the packet we got
// if not, build the node structure and add it

fn main() {
    let socket:Socket = Socket::new(Domain::IPV4, Type::DGRAM, None).unwrap();
    socket.set_reuse_port(true).unwrap();
    socket.join_multicast_v4(&Ipv4Addr::new(239, 0, 1, 2), &Ipv4Addr::new(0, 0, 0, 0)).unwrap();

    socket.bind(&"0.0.0.0:50000".parse::<SocketAddr>().unwrap().into()).unwrap();

    let socket:UdpSocket = socket.into();

    let mut nodes: HashMap<String, Node> = HashMap::new();

    loop {
        let mut rx_buf: [u8; 65536] = [0; 65536];
        let (rx_len, rx_src) = socket.recv_from(&mut rx_buf).unwrap();

        let rx_str = str::from_utf8(&rx_buf[..rx_len]).unwrap();
        let p = fdtp::FDPacket::from_string(rx_str).unwrap();

        let msg_type = p.get_msg_type();
        let node_str = p.get_node();

        if let Some(node) = nodes.get_mut(node_str.as_str()) {
            if node.source_ip != rx_src {
                println!("IP for {} changed!\n", node_str);
            } 
            
            node.messages.entry(msg_type).or_insert(p);
        } else {
            let mut n = Node {
                source_ip: rx_src,
                messages: HashMap::new()
            };

            n.messages.insert(msg_type, p);
            nodes.insert(node_str, n);
        }

        for n in &nodes {
            for m in &n.1.messages {
                println!("{}", m.1);
            }
        }
    }
}
