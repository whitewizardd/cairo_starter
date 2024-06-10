

enum Coin {
    Penny,
    Nickel,
    Dime,
    Quarter
}

fn get_coin(coin : Coin) -> felt252{
    
    match coin {
        Coin::Penny => 1,
        Coin::Nickel => 2,
        Coin::Dime => 3,
        Coin::Quarter => 4
    }
}

fn main () {
    let coin : Coin = Coin::Dime;

    let value : felt252 = get_coin(coin);

    println!("here is the result {value}");
}