using Test, Problem008

@testset "Known solutions for problem 008" begin
	@test Problem008.largest_product(4)		== 5832
	@test Problem008.largest_product(13)	== 23514624000
end
