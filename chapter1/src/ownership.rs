
pub fn ownership_example() {
    let s1: String = String::from("Hello");
    let s1_ptr: *const u8 = s1.as_ptr();
    println!("s1: {} at heap address: {:p}", s1, s1_ptr);

    let s2: String = s1; // Clone s1 to transfer ownership to s2
    let s2_ptr: *const u8 = s2.as_ptr();
    println!("s2: {} at heap address: {:p}", s2, s2_ptr);
}
