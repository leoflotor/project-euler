use problem_003::prime_factors;

#[test]
fn test_prime_factors() {
    assert_eq!(prime_factors(13195), [5, 7, 13, 29])
}
