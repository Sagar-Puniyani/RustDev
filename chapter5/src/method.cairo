#[derive(Copy, Drop)]
pub struct Rectangle {
    pub width: u64,
    pub height: u64,
}

#[generate_trait]
pub impl RectangleImpl of RectangleTrait {
    fn area(self: @Rectangle) -> u64 {
        (*self.width) * (*self.height)
    }
}
