using Test, Problem009

@testset "Pythagorean triplets" begin
	@test Problem009.special_pythagorean_triplet(12)	== [(3, 4, 5)]
	@test Problem009.special_pythagorean_triplet(1000)	== [(200, 375, 425)]
end

@testset "Product of triplets" begin
	@test Problem009.triplets_product([(3, 4, 5)])			== [60]
	@test Problem009.triplets_product([(200, 375, 425)])	== [31875000]
end