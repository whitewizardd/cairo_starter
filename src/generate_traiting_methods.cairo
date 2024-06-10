

fn main() {
    let rect = Rectangle { height: 60, width : 2, };

    println!("{}", rect.generate_area());
}

#[derive(Copy, Drop)]
struct Rectangle {
    width : u64,
    height : u64,

}

#[generate_trait]
impl RectangleImpl of RectangleTrait {

    fn generate_area(self: @Rectangle) -> u64 {
        *self.width * *self.height
    }
}