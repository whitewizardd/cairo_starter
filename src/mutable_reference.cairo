


fn main() {

    let mut rec = Rectangle{height: 8, width: 10};

    flip(ref rec);

    println!("deal is :: {} , {}", rec.height, rec.width);
}

fn flip(ref rec : Rectangle) {
    let swap = rec.height;
    rec.height = rec.width;
    rec.width = swap;
}

#[derive(Copy, Drop)]
struct Rectangle {
    height: u8,
    width: u8,
}