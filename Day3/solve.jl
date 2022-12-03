# Part 1
prio(x) = x >= 'a' ? x - 'a' + 1 : x - 'A' + 27
function f(ln)
    m = length(ln)÷2
    l, r = ln[begin:m], ln[m+1:end]
    return prio((l ∩ r)[1])
end
p1 = open("input.txt", "r") do io
    io |> readlines |> x -> map(f, x) |> sum
end

# Part 2
p2 = open("input.txt", "r") do io
    lines = readlines(io)
    groups = [[lines[i:i+2]][1] for i in 1:3:length(lines)-2]
    sum(map(prio ∘ first ∘ (gp -> ∩(gp...)), groups))
end