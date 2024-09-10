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
}
