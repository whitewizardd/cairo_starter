


fn main() {

    let mut balance : Felt252Dict<u16> = Default::default();

    balance.insert('Alex', 1300);


    println!("{}", balance.get('Alex'));
    assert(balance.get('Alex') == 1300, 'incorrect abeg no stress me');

    balance.insert('Alex', 300);


    assert!(balance.get('Alex') == 300, "not correct balance updated");

    assert(balance.get('Dele') == 0, 'incorrect then...');
}