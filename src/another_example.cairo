


#[derive(Copy, Drop)]
struct Rectangle {
    height : u64,
    width : u64,   
}

#[generate_trait]
impl RectangleImpl of RectangleTrait {

    fn area(self: @Rectangle) -> u64 {
        *self.height * *self.width
    }

    fn new(height: u64, width:u64) -> Rectangle {
        Rectangle {height: height, width: width}
    }

    fn square(value : u64) -> Rectangle {
        Rectangle { height: value, width: value}
    }

    fn average(rectangle : @Rectangle) -> u64 {
        (*rectangle.height * *rectangle.width) / 2
    }

    fn area_reference(ref self : Rectangle) -> u64 {
        self.height * self.width
    }
}


fn main() {
    let rect = RectangleTrait::new(20, 3);
    let the_average_value = RectangleTrait::average(@rect);
    let the_square = RectangleTrait::square(10);
    let area_of_a_squared_rectangle = the_square.area();
    println!("newer value is ::: {:?}", the_average_value);
    println!("area of a squared rectangle is ::: {:?}", area_of_a_squared_rectangle);
}