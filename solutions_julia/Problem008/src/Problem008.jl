module Problem008

import DelimitedFiles

project_path(parts...) = normpath(joinpath(@__DIR__, "..", parts...))
mydata = project_path("data/data.txt")

function read_data()
	read_data = DelimitedFiles.readdlm(mydata, '\t', String, '\n')
	clean_data =  split.(read_data, "") |> Iterators.flatten |> collect
	return parse.(Int, clean_data)
end

function largest_product(number_of_adjacent_digits)
	numbers = read_data()
	size = number_of_adjacent_digits - 1
	largest_product = 0
	for i in 1:length(numbers)-size
		product = prod(numbers[i:i+size])
		if product > largest_product
			largest_product = product
		end
	end
	return largest_product
end

end # module
