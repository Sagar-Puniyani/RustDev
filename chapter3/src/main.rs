mod array;
mod statement_expression;

fn main() {
    let mut x = 5;
    println!("The value of x is: {x}");
    x = 6;
    println!("The value of x is: {x}");

    {
        // another ways of mut is shadowing
        x = 2 * x;
        println!("There Double the value of variable x : {x}");
    }

    let spaces = "          ";
    let spaces = spaces.len();

    println!("Length of the spaces are : {spaces}");

    let num : u32 = "43".parse().expect("Not a Number");
    println!("number is : {num}");

    let c = 'z';
    let z: char = 'ℤ'; // with explicit type annotation
    let heart_eyed_cat = '😻';

    println!("c: {c}");
    println!("z: {z}");
    println!("heart_eyed_cat: {heart_eyed_cat}");

    let tup = (500, 6.4, 1);

    let (x, y, z) = tup;

    println!("The value of x is: {x}");
    println!("The value of y is: {y}");
    println!("The value of z is: {z}");
    println!("tuple at 1 : {} " , tup.1);

    array::elementofarr();
    statement_expression::statement_expression();
    statement_expression::typeof_condition();
    statement_expression::loop_assignment();
}
