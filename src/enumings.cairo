

fn main() {
    
    let mut data_is = ArrayTrait::<Data>::new();

    data_is.append(Data::Integer(100));
    data_is.append(Data::Felt('a'));
    data_is.append(Data::Tuple((2,8)));


}



enum Data{
    Integer: u8,
    Felt : felt252,
    Tuple : (u8, u8),
}