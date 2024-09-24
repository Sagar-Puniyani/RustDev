#[derive(Drop)]
pub struct A {}


pub fn mut_array() {
    let mut arr = array![10, 20, 30];
    arr.append(40);
    arr.append(50);
}


pub fn gives_ownership() -> A {
    let some_a = A {};
    some_a
}

pub fn takes_and_gives_back(some_a: A) -> A {
    some_a
}

pub fn calculate_len(arr: Array<u128>) -> (Array<u128>, usize) {
    let length = arr.len();

    (arr, length)
}


pub fn calculate_length_snap(arr: @Array<u128>) -> usize {
    arr.len()
}

#[derive(Copy, Drop)]
pub struct Rectangle {
    pub height: u64,
    pub width: u64,
}

pub fn calculate_area(rec: @Rectangle) -> u64 {
    *rec.height * *rec.width
}

pub fn flip(ref rec: Rectangle) {
    let temp = rec.height;
    rec.height = rec.width;
    rec.width = temp;
}
