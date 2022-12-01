# Part 1
sums = open("input.txt", "r") do io
    lines = readlines(io)
    zero_indices = findall(ln -> length(ln) == 0, lines)
    pushfirst!(zero_indices, 0)
    begins_ends = zip(zero_indices[begin:end-1], zero_indices[begin+1:end])
    sums = map(((b,e),) -> sum(parse.(Int, lines[b+1:e-1])), begins_ends)
    
end
partialsort!(sums, 3, rev=true)
println(sums[1])
# Part 2
println(sum(sums[1:3]))