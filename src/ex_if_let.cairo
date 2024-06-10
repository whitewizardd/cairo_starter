

enum Coin {
    Penny,
    Nickel,
    Dime, 
    Quarter
}


fn main () {
    let coin : Coin = Coin:: Penny;

    if let Coin::Penny = coin {
        println!("this is a penny");
    }
}