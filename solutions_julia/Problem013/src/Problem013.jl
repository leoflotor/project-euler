module Problem013

import DelimitedFiles

function read_data()
    DelimitedFiles.readdlm("data/data.txt", '\n', String)
end

function parse_data()
    data = read_data()
    len = length(data) ÷ 10 # number of zeros to pad to original data
    
    ('0' ^ len .* data 
        .|> reverse 
        .|> collect 
        .|> x -> parse.(Int, x))
end

function sum_large_numbers_set()
    large_numbers = hcat(parse_data()...)
    partial_sums = sum(large_numbers, dims=2)
    for index in eachindex(partial_sums)[1:end-1]
        a = partial_sums[index] % 10
        b = (partial_sums[index] - a) ÷ 10
        partial_sums[index] = a
        partial_sums[index+1] += b
    end
    partial_sums
end

function format_sum()
    number = sum_large_numbers_set()
    string(number...) |> reverse
end

end # module
