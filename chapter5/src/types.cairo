// Type casting example

pub fn type_conversion_implcit() {
    let my_u8: u8 = 10;
    let my_u16: u16 = my_u8.into();

    println!("{my_u16}");

    // try into
    let my_u256: u256 = 10;

    // Since a u256 might not fit in a felt252, we need to unwrap the Option<T> type
    let my_felt252: felt252 = my_u256.try_into().unwrap();

    println!("{my_felt252}");
}
