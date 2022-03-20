pub fn sum_of_multiples_below_number(number: i32) -> i32 {
    let mut vec = Vec::new();
    for n in 1..number {
        if n % 5 == 0 || n % 3 == 0 {
            vec.push(n);
        }
    }
    vec.iter().sum()
}

// fn main() {
//     let sum = sum_of_multiples_below_number(10);
//     println!("{}", sum)
// }
