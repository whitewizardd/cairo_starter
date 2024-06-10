


fn main() {
    let rect = Rectangle{height : 30, width: 2};
    println!("Area is ::: {}", rect.area());
}


trait RectangleTrait {
    fn area (self : @Rectangle) -> u64;
}

impl RectangleImple of RectangleTrait {
    fn area (self : @Rectangle) -> u64 {
        *self.width * * self.height
    }
}

#[derive(Copy, Drop)]
struct Rectangle{
    height : u64, 
    width : u64,
}