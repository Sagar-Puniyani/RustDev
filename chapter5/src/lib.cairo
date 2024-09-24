mod hello;
mod types;
mod array;
mod dict;
mod owner;
mod method;

use method::RectangleTrait;

fn main() -> u32 {
    // hello::greeting();
    // types::type_conversion_implcit();

    // array::array_sample();
    // let val = array::get_method();
    // println!("value : {}", val);

    // array::at_method();

    // array::custom_datatype_array();
    // array::span_method();

    // dict::create_dict();

    // Ownership
    let _a1 = owner::gives_ownership();
    let a2 = owner::A {};
    let _a3 = owner::takes_and_gives_back(a2); // a2 is moved into

    let array1: Array<u128> = array![10, 20, 30, 40];

    let (_arr2, len) = owner::calculate_len(array1);

    println!("len is : {}", len);

    let mut arr1: Array<u128> = array![10, 20, 30, 40];
    let first_snap = @arr1;

    let first_len = owner::calculate_length_snap(first_snap);
    arr1.append(50);
    let second_snap = @arr1;
    let second_len = owner::calculate_length_snap(second_snap);

    println!("The length of the array when the snapshot was taken is {}", first_len);
    println!("The current length of the array is {}", second_len);

    let mut rec = owner::Rectangle { height: 3, width: 10 };
    let area = owner::calculate_area(@rec);
    println!("Area: {}", area);

    owner::flip(ref rec);
    println!("height: {}, width: {}", rec.height, rec.width);

    // traits
    let rect1 = method::Rectangle { width: 30, height: 50, };
    println!("Area is {}", rect1.area());

    fib(16)
}

fn fib(mut n: u32) -> u32 {
    let mut a: u32 = 0;
    let mut b: u32 = 1;
    while n != 0 {
        n = n - 1;
        let temp = b;
        b = a + b;
        a = temp;
    };
    a
}

#[cfg(test)]
mod tests {
    use super::fib;

    #[test]
    fn it_works() {
        assert(fib(16) == 987, 'it works!');
    }
}
