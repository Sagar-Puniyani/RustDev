mod hello;
mod types;
mod array;

fn main() -> u32 {
    // hello::greeting();
    // types::type_conversion_implcit();

    array::array_sample();
    let val = array::get_method();
    println!("value : {}", val);

    array::at_method();

    array::custom_datatype_array();
    array::span_method();

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
