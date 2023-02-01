module Problem012

import Primes

function count_factors(n)
	# Count the total of divisors except self
	((Primes.factor(Dict, n) |> values .|> x -> x + 1) 
		|> prod
		|> x -> x - 1)
end

function triangle_number(n)
	n * (n + 1) ÷ 2
end

function factors_of_triangle_number(n)
	n |> triangle_number |> count_factors
end

function doall(number_of_factors)
	n = 1
	while factors_of_triangle_number(n) < number_of_factors
		n += 1
	end
	return n, triangle_number(n)
end

end # module
