
use std::{string::String, mem::size_of};
use std::fmt;
use std::collections::HashMap;

#[derive(Debug)]
pub struct CannotParse;
#[derive(Debug)]
pub struct MissingData;

#[derive(Debug)]
pub enum FDTPError {
    CannotParse(CannotParse),
    MissingData(MissingData)
}

impl From<CannotParse> for FDTPError {
    fn from(e: CannotParse) -> Self {
        FDTPError::CannotParse(e)
    }
}
impl From<MissingData> for FDTPError {
    fn from(e: MissingData) -> Self {
        FDTPError::MissingData(e)
    }
}

#[derive(Debug)]
pub struct DataPoint {
    name: String,
    value: DataPointValue,
}

impl fmt::Display for DataPoint {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "{}: {:?}", self.name, self.value)
    }
}

#[derive(Debug)]
pub enum DataPointValue {
    U8(u8),
    U16(u16),
    U32(u32),
    U64(u64),
    I8(i8),
    I16(i16),
    I32(i32),
    I64(i64),
    F32(f32),
    F64(f64),
    Bool(bool),
    String(String)
}

trait FromBEBytes: Sized {
    fn from_be_bytes(bytes: impl AsRef<[u8]>) -> Option<Self>;
}

macro_rules! derive_from_bytes {
    ($t:ty) => {
        impl FromBEBytes for $t {
            fn from_be_bytes(bytes: impl AsRef<[u8]>) -> Option<Self> {
                Some(Self::from_be_bytes(
                    bytes.as_ref()[..size_of::<Self>()].try_into().ok()?,
                ))
            }
        }
    };
}

derive_from_bytes!(u8);
derive_from_bytes!(u16);
derive_from_bytes!(u32);
derive_from_bytes!(u64);
derive_from_bytes!(i8);
derive_from_bytes!(i16);
derive_from_bytes!(i32);
derive_from_bytes!(i64);
derive_from_bytes!(f32);
derive_from_bytes!(f64);

impl DataPoint {
    pub fn from_str(s: &str) -> Result<DataPoint, FDTPError> {
        let (key_str, val_str) = s.split_once(':').ok_or(CannotParse)?;
        let (name_str, t_str) = key_str.rsplit_once('_').ok_or(CannotParse)?;

        let val = match t_str {
            "u8" => DataPointValue::U8(Self::parse_numeric(val_str)?),
            "u16" => DataPointValue::U16(Self::parse_numeric(val_str)?),
            "u32" => DataPointValue::U32(Self::parse_numeric(val_str)?),
            "u64" => DataPointValue::U64(Self::parse_numeric(val_str)?),
            "i8" => DataPointValue::I8(Self::parse_numeric(val_str)?),
            "i16" => DataPointValue::I16(Self::parse_numeric(val_str)?),
            "i32" => DataPointValue::I32(Self::parse_numeric(val_str)?),
            "i64" => DataPointValue::I64(Self::parse_numeric(val_str)?),
            "f32" => DataPointValue::F32(Self::parse_numeric(val_str)?),
            "f64" => DataPointValue::F64(Self::parse_numeric(val_str)?),
            "b" => DataPointValue::Bool(Self::parse_bool(val_str)?),
            "s" => DataPointValue::String(Self::parse_string(val_str)?),
            _ => Err(CannotParse)?
        };

        return Ok(DataPoint { name: name_str.to_owned(), value: val});
    }

    fn parse_numeric<T: FromBEBytes>(s: &str) -> Result<T, CannotParse> {
        // size of buffer = sizeof(T)
        let mut buf: [u8; 16] = [0; 16];
        hex::decode_to_slice(s, &mut buf[..size_of::<T>()]).map_err(|_|CannotParse)?;
        
        T::from_be_bytes(buf).ok_or(CannotParse)
    }

    fn parse_bool(s: &str) -> Result<bool, CannotParse> {
        if s == "1" {
            Ok(true)
        } else if s == "0" {
            Ok(false)
        } else {
            Err(CannotParse)
        }
    }

    fn parse_string(s: &str) -> Result<String, CannotParse> {
        return Ok(s.to_owned()); // do nothing yet
    }
}

pub struct FDPacket {
    data: HashMap<String, DataPoint>
}

trait PacketParser {
    fn from_string(s: &str) -> Result<FDPacket, CannotParse> {
        parse_packet(s)
    }
}

fn parse_packet(s: &str) -> Result<FDPacket, CannotParse>{
    let mut pkt = FDPacket {
        data: HashMap::new()
    };
    
    for l in s.trim().lines() {
        let d = DataPoint::from_str(l).map_err(|_|CannotParse)?;
        pkt.data.insert(d.name.clone(), d);
    }

    return Ok(pkt);
}

impl PacketParser for FDPacket {}

impl FDPacket {
    pub fn get(&self, s: &str) -> Option<&DataPointValue> {
        Some(&self.data.get(s)?
                .value)
    }

    pub fn get_int(&self, s: &str) -> Option<i64> {
        match self.get(s) {
            Some(DataPointValue::U8(v)) => Some(*v as i64),
            Some(DataPointValue::U16(v)) => Some(*v as i64),
            Some(DataPointValue::U32(v)) => Some(*v as i64),
            Some(DataPointValue::U64(v)) => Some(*v as i64),
            Some(DataPointValue::I8(v)) => Some(*v as i64),
            Some(DataPointValue::I16(v)) => Some(*v as i64),
            Some(DataPointValue::I32(v)) => Some(*v as i64),
            Some(DataPointValue::I64(v)) => Some(*v as i64),
            _ => None
        }
    }

    pub fn get_float(&self, s: &str) -> Option<f64> {
        match self.get(s) {
            Some(DataPointValue::F32(v)) => Some(*v as f64),
            Some(DataPointValue::F64(v)) => Some(*v as f64),
            _ => None
        }
    }

    pub fn get_string(&self, s: &str) -> Option<String> {
        match self.get(s) {
            Some(DataPointValue::String(v)) => Some(v.to_string()),
            _ => None
        }
    }

    pub fn get_bool(&self, s: &str) -> Option<bool> {
        match self.get(s) {
            Some(DataPointValue::Bool(v)) => Some(*v),
            _ => None
        }
    }
}

impl fmt::Display for FDPacket {
    // This trait requires `fmt` with this exact signature.
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        for v in &self.data {
            write!(f, "{}\n", v.1)?
        }
        Ok(())
    }
}

pub trait FCv1Packet {
    fn from_string(s: &str) -> Result<FDPacket, FDTPError>;
    fn get_node(&self) -> String;
    fn get_timestamp(&self) -> i64;
    fn get_msg_type(&self) -> String;  
}

impl FCv1Packet for FDPacket {
    fn from_string(s: &str) -> Result<FDPacket, FDTPError> {
        let p = parse_packet(s)?;

        if let (Some(_), Some(_), Some(_)) = (p.get("node"), p.get("msg_type"), p.get("timestamp")) {
            return Ok(p);
        }

        Err(FDTPError::MissingData(MissingData))
    }

    fn get_node(&self) -> String {
        self.get_string("node").expect("\"node\" is supposed to be in this packet")
    }

    fn get_timestamp(&self) -> i64 {
        self.get_int("timestamp").expect("\"timestamp\" is supposed to be in this packet")
    }

    fn get_msg_type(&self) -> String {
        self.get_string("msg_type").expect("\"msg_type\" is supposed to be in this packet")
    }
}
