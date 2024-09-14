pub fn create_string() {
    let mut  s1: String = String::from("Sagar");
    s1.push_str(" Puniyani");
    let s2: String = s1;
    println!("string {}", s2);
}
