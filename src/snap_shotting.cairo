


fn main() {

    let mut arr1: Array<u8> = array![];

    let first_snap_shot = @arr1;

    arr1.append(2);

    let second_snap_shot = @arr1.len();



    println!("first snapshot length ::: {}", normal_array(arr1));
    println!("second snapshot length ::: {}, {second_snap_shot}", snap_shot_array(first_snap_shot));

    let mut rec: Rectangle = Rectangle{height: 50, width: 2};

    let result : u64 = de_snap(@rec);
    println!("rectangle result is ::: {}", result);

}

fn normal_array(x: Array<u8>) -> usize {
    x.len()
}

fn snap_shot_array(x: @Array<u8>) -> usize {
    x.len()
}


#[derive(Copy, Drop)]
struct Rectangle {
    height: u64,
    width: u64,
}

fn de_snap(rec : @Rectangle) -> u64 {
    *rec.width * *rec.height
}