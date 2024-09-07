
// mod stack_heap;
// mod ownership;
mod borrower;
fn main() {
    /*
    let greeting : String = String::from("Hello World !!");
    println!("{}" , greeting);


    let char1 = greeting.chars().nth(11000);

    match char1 {
        Some(c) => println!("{}" , c),
        None => println!("undefined"),
    }

    
    stack_heap::stack_fn();   // Call the function that uses stack memory
    stack_heap::heap_fn();    // Call the function that uses heap memory
    stack_heap::update_string();  // Call the function that changes size of variable at runtime


    ownership::ownership_example();

*/
    let mut greeting = String::from("Hello");
    borrower::borrow_variable(& mut greeting);
}
