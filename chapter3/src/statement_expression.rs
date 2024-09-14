pub fn statement_expression() {
    let y = {
        let x = 20;
        x + 1
    };

    println!("The value of y is: {y}");
}

// type in compatible
pub fn typeof_condition() {
    let condition = false;

    let number = if condition { 5 } else { 454 };

    println!("The value of number is: {number}");
}

pub fn loop_assignment() {
    let mut counter = 0;

    let result = loop {
        counter += 1;

        if counter == 10 {
            break counter * 2;
        }
    };

    println!("The result is {result}");
}
