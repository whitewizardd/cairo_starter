

fn main() {
    let mut rect = Rectangle {height : 20, width : 2, };

    let mut real_factor = rect.common_factor(3);

    println!("here is the common factor ::: {}", real_factor);
}

#[generate_trait]
impl Trait of TraitsTrait {
    fn common_factor(self : @Rectangle, c : u64) -> u64 {
        ((*self.height * 2) + (*self.width * 2))
    }
}



#[derive(Copy, Drop)]
struct Rectangle {
    height : u64,
    width : u64,
}