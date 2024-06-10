

fn main() {
    get_length_of_an_array();
    yet_another_array_with_macro();
}

fn get_length_of_an_array() {
    let mut a = ArrayTrait::new();
    a.append(2);
    a.append(3);
    a.append(4);

    a.pop_front().unwrap();
    a.pop_front().unwrap();

    let length_of_an_array = a.len();

    println!("at index at ::: {}", a[0]);
    println!("lengthing is ::: {}", length_of_an_array);
}

fn yet_another_array_with_macro() {

    let mut a = array![2, 4, 6, 8, 10];

    a.pop_front().unwrap();

    println!("{}", a[0]);
}