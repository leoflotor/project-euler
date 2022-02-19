"""
A palindromic number reads the same both ways. The largest palindrome made 
from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
"""

function greatest_palyndrome()
	numbers = 100:999
	combinations = Iterators.product(numbers, numbers)
	products = map(x -> x[1]*x[2], combinations)
	palindromes = (x for x in products if x != 0 && string(x) == reverse(string(x)))
	maximum(palindromes)
end

println(greatest_palyndrome())