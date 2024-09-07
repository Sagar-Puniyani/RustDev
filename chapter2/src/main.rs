use std::io;

fn main() {
    println!("Guess the number!");
    println!("Enter the Guess to start the game:");

    let mut  guess: String = String::new();

    io::stdin().read_line( &mut guess)
    .expect("Failed Linre");

    println!("You guessed {guess}");
}
