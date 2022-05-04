"""
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
"""

function largest_prime_factor(number)
	# It can happen that the given number is divisible by 2
	while number % 2 == 0
		number = number ÷ 2
	end
	# The resulting number should be divisible by primes only,
	# so there is no need to start the counter in 2.
	i = 3
	while i < sqrt(number)
		while number % i == 0
			number = number ÷ i
		end
		i += 2
	end
	number
end

println(largest_prime_factor(600851475143))