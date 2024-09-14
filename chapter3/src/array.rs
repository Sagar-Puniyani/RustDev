use std::io;

pub fn elementofarr() {
    let arr = [1, 2, 3, 4, 5];

    println!("please enter an array index.");

    let mut index = String::new();

    io::stdin()
        .read_line(&mut index)
        .expect("Failed to read line");

    let index: usize = index.trim().parse().expect("Not A Number");

    let element : i32 = arr[index];


    println!("value at the array is {element} at {index}");

}
