pub fn prime_factors(mut number: u64) -> Vec<u64> {
    let mut dummy = 2;
    let mut factors: Vec<u64> = vec![];
    while number > 1 {
        if number % dummy == 0 {
            number = number / dummy;
            factors.push(dummy);
        } else {
            dummy = dummy + 1;
        }
    }
    factors
}
