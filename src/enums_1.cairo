

// no asscociated value

#[derive(Copy, Drop)]
enum Direction {
    North, 
    West,
    East, 
    South
}

// with associated value

#[derive(Copy, Drop)]
enum Another_Direction {
    North_West : u64,
    North_Central : u64,
    North_East : u64,
    SOuth_South : u64,
}


fn main() {
    let direction = Direction::North;
    let another_direction = Another_Direction::North_West(20);

}
