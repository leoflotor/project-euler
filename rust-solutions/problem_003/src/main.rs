use problem_003::prime_factors;

fn main() {
    let max_prime_factor = prime_factors(600851475143).last().cloned().unwrap();
    println!("{:?}", max_prime_factor)
    // println!("{:?}", prime_factors(13195))
}
