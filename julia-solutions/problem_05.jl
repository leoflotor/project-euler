"""
2520 is the smallest number that can be divided by each of the numbers 
from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the
numbers from 1 to 20?
"""

function smallest_positive()
	divisors = 1:20
	i = 1
	while true
		if all(x -> x == 0, i .% divisors)
			break
		end
		i += 1
	end
	i
end

println(smallest_positive())