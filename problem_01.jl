"""
If we list all the natural numbers below 10 that are multiples of 3 or 5, 
we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
"""

function sum_of_multiples(number)
	numbers = 1:number-1
	summation = 0
	for number in numbers
		if number % 3 == 0 || number % 5 == 0
			summation += number
		end
	end
	summation
end

println(sum_of_multiples(1000))