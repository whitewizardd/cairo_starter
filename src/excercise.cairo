

fn main() {

    let mut v = array![1, 2, 3, 4];

    let mut i = *v[0];
    
    i += 1;

    println!("{}, {}", i, v[0]);
}