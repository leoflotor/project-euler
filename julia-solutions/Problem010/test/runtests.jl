using Test, Problem010

@testset "Test sum of primes below given number" begin
	@test Problem010.sum_of_primes_below_number(10)			== 17
	@test Problem010.sum_of_primes_below_number(2000000)	== 142913828922
end