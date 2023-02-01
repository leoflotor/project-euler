pub fn sum_even_fib_numbers(ceiling: u128) -> u128 {
    let mut memo = (1, 2);
    let mut sum = 0;
    while memo.1 < ceiling {
        if memo.1 % 2 == 0 {
            sum = sum + memo.1;
        }
        memo = (memo.1, memo.1 + memo.0);
    }
    sum
}
