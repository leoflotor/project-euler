module Problem010

using Primes

function sum_of_primes_below_number(ceiling)
	1:ceiling-1 |> x -> filter(isprime, x) |> sum
end

end # module
