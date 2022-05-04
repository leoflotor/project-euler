module Problem014

f(n) = n % 2 == 0 ? n ÷ 2 : 3 * n + 1

function chain(n::Int)
	# a = Vector{Int}(undef, 0)
	counter = 1
	while n != 1
		# append!(a, n)
		counter += 1
		n = f(n)
	end
	return counter # , a
end

function gen!(n, memo)
	if n ∉ keys(memo)
		memo[n] = chain(n)
	end
end


# function gen!(ceiling, memo)
# 	for i in 2:ceiling
# 		if i ∉ keys(memo)
			
# 		end
# 	end
# end

end # module
