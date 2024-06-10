

#[derive( Drop)]
enum Message{
    Quit,
    Message : ByteArray,
    Echo : (u64, u64),
}


#[generate_trait]
impl MessageImpl of MessageTrait {

    fn process(self: Message) {
        match self {
            Message::Quit => {
                println!("quiting the message");
            },
            Message::Message(value) => {
                println!("here is the detail of the Message message {}", value);
            },
            Message::Echo((x, y)) => {
                println!("here is the message echo {}, {}", x, y);
            },
        }
    }
}

fn main () {
    let message : Message = Message::Quit;
    let another_message : Message = Message::Message("i am the founder");
    message.process();
    another_message.process();

    let x : u8 = 2;

    if
}