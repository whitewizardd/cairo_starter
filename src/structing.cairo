


fn main() {
    // let mut user = create_user("username", "email@email.com", 30);

    let user = User{username : "samuel", email : "oladele@email.com", id : 20, };

    // let user2 = User{id : 20, ..user};

    println!("{}", user.email);
    // println!("the other {}", user2.email);
}

fn create_user(username: ByteArray, email : ByteArray, id : u8) -> User {
    User{ username, email : email, id : id.into()}
}

#[derive(Drop)]
struct User {
    username : ByteArray,
    email : ByteArray,
    id : u16,
}

// fn create_another_user_using_destructuring(user : User, id : u16) {
//     User {id : id, ..user}
// }