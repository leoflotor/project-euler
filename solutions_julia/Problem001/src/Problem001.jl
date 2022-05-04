module Problem001

function sum_of_multiples(ceiling)
	sum(i for i in 1:ceiling-1 if i % 3 == 0 || i % 5 == 0)
end

end # module
