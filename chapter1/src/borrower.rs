pub fn borrow_variable(my_string : & mut String){
    println!("{}" , my_string);
    println!("Apply mutation ");
    my_string.push_str(" World");
    println!("{}" , my_string);
}