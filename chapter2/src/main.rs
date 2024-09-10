use rand::Rng;
use std::cmp::Ordering;
use std::io;

fn main() {
    println!("Guess the number!");

    let random_number: u32 = rand::thread_rng().gen_range(1..=100);
    loop {
        println!("Enter the Guess to start the game:");
        let mut guess: String = String::new();

        io::stdin()
            .read_line(&mut guess)
            .expect("Failed in Line Reading");

        println!("You guessed {guess}");

        let guess: u32 = match guess.trim().parse() {
            Ok(num) => num,
            Err(_) => {
                println!("Please Enter a valid Input");
                continue;
            }
        };


        match guess.cmp(&random_number) {
            Ordering::Greater => println!("Too Big!"),
            Ordering::Less => println!("Too Small"),
            Ordering::Equal => {
                println!("You Won!");
                break;
            }
        }
    }
}
