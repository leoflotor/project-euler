module Problem002

function sum_even_fib_numbers(ceiling)
    memo = (1, 2)
    # tmp = [1, 2]
    sum = 0
    while memo[2] < ceiling
        # append!(tmp, memo[2] + memo[1])
        if memo[2] % 2 == 0
            sum += memo[2]
        end
        memo = (memo[2], memo[2]+memo[1])
    end
    sum # , tmp
end

end # module
