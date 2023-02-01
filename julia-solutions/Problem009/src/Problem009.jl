module Problem009

function special_pythagorean_triplet(sum_)
	triplets = []
	for a in 1:sum_-1, b in 2:sum_
		if b > a && a + b < sum_
			c = sqrt(a^2 + b^2)
			if a + b + c == sum_
				push!(triplets, (a, b, Int(c)))
			end
		end
	end
	return triplets
end

function triplets_product(triplets)
	return triplets .|> prod
end

end # module
