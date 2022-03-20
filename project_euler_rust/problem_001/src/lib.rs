pub fn sum_of_multiples_below_number(number: i64) -> i64 {
    let iter: i64 = (1..number).filter(|n| n % 5 == 0 || n % 3 == 0).sum();
    iter
}
