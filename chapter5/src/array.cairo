pub fn array_sample() {
    let mut arr = ArrayTrait::new();
    arr.append(2);
    arr.append(10);
    arr.append(20);

    let first_value = arr.pop_front().unwrap();
    println!("The first value is {}", first_value);
}

pub fn get_method() -> u128 {
    let mut arr = ArrayTrait::<u128>::new();
    arr.append(1000);

    let index_access: usize = 40;

    match arr.get(index_access) {
        Option::Some(x) => { *x.unbox() },
        Option::None => {
            println!("out of bounds");
            10
        },
    }
}

pub fn at_method() {
    let mut arr = ArrayTrait::new();
    arr.append(10);
    arr.append(25);

    println!("length of array : {} ", arr.len());

    assert(*arr.at(1) == 25, 'item mismatch on index 0');
}

#[derive(Copy, Drop)]
enum Data {
    Integer: u128,
    Felt: felt252,
    Tuple: (u32, u32),
}

pub fn custom_datatype_array() {
    let mut messages: Array<Data> = array![];
    messages.append(Data::Integer(100));
    messages.append(Data::Felt('hello world'));
    messages.append(Data::Tuple((10, 30)));
}

pub fn span_method() {
    let mut arr = array![1, 2, 3, 4, 5];

    let val: Span<u64> = arr.span();
    println!("value : {}", val[1]);
}
