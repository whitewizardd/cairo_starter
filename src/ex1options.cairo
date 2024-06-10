

fn add_one(x: Option<u8>) -> Option<u8> {

    match x {
        Option::Some(value) => Option::Some(value + 1),
        Option::None => Option::None,
    }
}

fn main() {

    let x : Option<u8> = add_one(Option::Some(5));

    println!("here is the result {}", x.unwrap());
}