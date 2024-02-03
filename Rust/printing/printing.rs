use std::fmt;

struct DebugPrintable(i32);

impl fmt::Display for DebugPrintable {
    // This trait requires `fmt` with this exact signature.
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        // Write strictly the first element into the supplied output
        // stream: `f`. Returns `fmt::Result` which indicates whether the
        // operation succeeded or failed. Note that `write!` uses syntax which
        // is very similar to `println!`.
        write!(f, "{}", self.0)
    }
}

#[derive(Debug)]
struct Person<'a> {
    name: &'a str,
    age: u8
}

fn main() {
    println!("{} days", 31);

    println!("arg 0: {0}, arg 1: {1}, arg 0 again {0}", "hello", 1.23);

    let x = 1234;
    println!("base 10: {}", x);
    println!("base 2: {:b}", x);
    println!("base 8: {:o}", x);
    println!("base 16: {:x}", x);

    println!("base 16, leading 0s: {x:0>8x}");

    let pi = 3.1415926;

    println!("pi is approx {pi:.3}");

    println!("{}", DebugPrintable(10));

    let name = "Peter";
    let age = 27;
    let peter = Person { name, age };
    println!("{:?}", peter); // pretty printing
}