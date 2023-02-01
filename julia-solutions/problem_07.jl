"""
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see 
that the 6th prime is 13.

What is the 10 001st prime number?
"""

function is_prime(number)
	i = 2
	while true
		# The numbers 0 and 1 are edge cases
		(number == 1 || number == 0) && return false
		number == i && return true
		number % i == 0 && return false
		i += 1
	end
end

function nth_prime(nth)
	counter = 0
	# The numbers 0 and 1 are excluded
	number = 2
	while counter <= nth
		if is_prime(number)
			counter += 1
		end
		number += 1
	end
	number-1
end

println(nth_prime(10001))