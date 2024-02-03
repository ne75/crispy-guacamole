fn print_matrix(m: & [[f32; 2]; 2]) { // type of arg must be &mut, which is a mutable reference. m itself is not mutable because we don't change references.
    print!("[{: ^4} {: ^4}]\n[{: ^4} {: ^4}]\n", m[0][0], m[0][1], m[1][0], m[1][1]);
}

fn transpose(m: &mut [[f32; 2]; 2]) {
    let t = m[0][1];
    m[0][1] = m[1][0];
    m[1][0] = t;
}

fn main() {
    // m must be mutable so that it can be modified when ref is passed to print_matrix
    let mut m = [
        [1.0, 2.0],
        [4.0, 5.0]
    ];

    print_matrix(& m); // when passing reference, need to explicitly say it's mutable so that the function call is allowed to modify it
    transpose(&mut m);
    print_matrix(& m);
}