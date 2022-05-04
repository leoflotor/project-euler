module Problem011

import DelimitedFiles, LinearAlgebra

project_path(parts...) = normpath(joinpath(@__DIR__, "..", parts...))
mydata = project_path("data/data.txt")

function read_data()
	DelimitedFiles.readdlm(mydata, Int64)
end

function largest_vector_product(vector, window_size)
	n = window_size - 1
	((vector[i:i+n] for i in 1:length(vector)-n) 
		.|> prod 
		 |> maximum)
end

function largest_nondiagonal_product(data, window_size)
	((largest_vector_product(col, window_size) 
		for col in eachcol(data)) 
		|> maximum)
end

function largest_diagonal_product(data, window_size)
	range_ = size(data)[1] - 1 # Numeber of diagonals in matrix
	diag_(i) = LinearAlgebra.diag(data, i)

	(((diag_(i) for i in -range_:range_ if length(diag_(i)) >= window_size)
		.|> x -> Problem011.largest_vector_product(x, window_size))
		 |> maximum)
end

function largest_grid_product(data, window_size)
	forward 	= data |> x -> largest_diagonal_product(x, window_size)
	backward 	= data |> x -> rotr90(x, -1) |> x -> largest_diagonal_product(x, window_size)
	column 		= data |> x -> largest_nondiagonal_product(x, window_size)
	row 		= data |> x -> rotr90(x, -1) |> x -> largest_nondiagonal_product(x, window_size)

	return (forward, backward, column, row) |> maximum
end

end # module
