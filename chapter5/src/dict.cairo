use core::dict::{Felt252Dict, Felt252DictEntryTrait};
use core::nullable::{NullableTrait, match_nullable, FromNullableResult};

pub fn create_dict() {
    let mut balance: Felt252Dict<u64> = Default::default();

    balance.insert('Alex', 100);
    balance.insert('Bob', 200);

    let alex_balance = balance.get('Alex');
    assert!(alex_balance == 100, "Balance is not 100");

    let bob_balance = balance.get('Bob');
    assert!(bob_balance == 200, "Balance is not 200");

    // custom get operation

    let get_by_custom_method = get_custom(ref balance, 'Bob');
    println!("Bob's balance from get_custom is: {}", get_by_custom_method);

    // custom insert operstion 

    custom_insert(ref balance, '0', 589);
    let val_zero = get_custom(ref balance, '0');
    println!("value at 0 key : {}", val_zero);

    assert!(val_zero == 589, "Expecting 589");

    dict_custom_type();
    dict_array_type();
}


pub fn get_custom<T, +Felt252DictValue<T>, +Drop<T>, +Copy<T>>(
    ref dict: Felt252Dict<T>, key: felt252
) -> T {
    // Create the new entry to add using the entry method.
    let (new_entry, prev_value) = dict.entry(key);
    let return_value = prev_value;

    // Insert back the entry where the new_value equals the previous_value.
    dict = new_entry.finalize(prev_value);

    // Return the value.
    return_value
}

pub fn custom_insert<T, +Felt252DictValue<T>, +Destruct<T>, +Drop<T>>(
    ref dict: Felt252Dict<T>, key: felt252, value: T
) {
    // create the entry to add using entry method 
    let (new_entry, _prev_value) = dict.entry(key);

    // return the ownership of the dict with updated value
    dict = new_entry.finalize(value);
}

// to create the dict of not supported-natively
pub fn dict_custom_type() {
    //  Create the dictionary
    let mut d: Felt252Dict<Nullable<Span<felt252>>> = Default::default();

    //  create the array to insert
    let a = array![8, 9, 10];

    // Insert it as a `Span`
    d.insert(0, NullableTrait::new(a.span()));

    let val = d.get(0);

    let span = match match_nullable(val) {
        FromNullableResult::Null => panic!("No value found"),
        FromNullableResult::NotNull(val) => val.unbox(),
    };

    // Verify we are having the right values
    assert!(*span.at(0) == 8, "Expecting 8");
    assert!(*span.at(1) == 9, "Expecting 9");
    assert!(*span.at(2) == 10, "Expecting 10");
}

pub fn dict_array_type(){
    let arr = array![20, 19, 26];
}
