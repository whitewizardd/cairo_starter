

fn main() {

}

#[derive(Copy, Drop)]
enum UsState{
    Alabama,
    Alaska
}


#[derive(Copy, Drop)]
enum Coin {
    Penny, 
    Dime,
    Nickel,
    Quarter : UsState,
}

fn get_coin(coin : Coin) -> felt252 {

    match coin {
        Coin::Penny => 1,
        Coin::Dime => 2,
        Coin :: Nickel => 3,
        Coin::Quarter(value) => {
            // println!("State quarter from {:?}!", value);
            // value;
            4
        }
    }
}