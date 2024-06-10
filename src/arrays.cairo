

fn main () {
    learn_array();
}

fn learn_array() {
    let mut a = ArrayTrait::new();
    a.append(2);
    a.append(3);

    let mut b = ArrayTrait::<u8>::new();
    b.append(4);
    b.append(5);

    let mut c:Array<u8> = ArrayTrait::new();
    c.append(6);
    c.append(7); 

    let value:u8 = *c.at(1);

    println!("here is the result ::: {}", value);

    let value = a[0];
    println!("printing the value at the first index of the first array {}", value);
}