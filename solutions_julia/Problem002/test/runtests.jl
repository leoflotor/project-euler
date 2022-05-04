using Test, Problem002

@testset "Sum of even value Fibonacci terms below 90" begin
	@test Problem002.sum_even_fib_numbers(90) == 44
end

@testset "Sum of even value Fibonacci terms below 4E6" begin
	@test Problem002.sum_even_fib_numbers(4E6) == 4613732
end