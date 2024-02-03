use std::fmt;

#[derive(Debug)]
struct Complex {
    r: f64,
    i: f64    
}

impl fmt::Display for Complex {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        return write!(f, "{} + {}j", self.r, self.i);
    }
}

fn main() {
    let z = Complex {r: 1., i: -2.};

    println!("{z}");
}