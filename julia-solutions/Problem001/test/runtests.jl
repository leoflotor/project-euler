using Test, Problem001

@testset "Test known sum of multiples of 3 or 5" begin
	@test Problem001.sum_of_multiples(10)	== 23
	@test Problem001.sum_of_multiples(1000)	== 233168
end
