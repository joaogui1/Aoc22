# Part1
function f(p)
    to_int = x -> parse(Int, x)
    rng1, rng2 = map(to_int, split(p[1], '-')), map(to_int, split(p[2], '-'))
    ((rng1[1] <= rng2[1]) && (rng1[2] >= rng2[2])) || ((rng1[1] >= rng2[1]) && (rng1[2] <= rng2[2]))
end
open("input.txt", "r") do io
    lines = readlines(io)
    assign = map(ln -> split(ln, ','), lines)
    sum(map(f, assign))
end
# Part2
function f(p)
    to_int = x -> parse(Int, x)
    rng1, rng2 = map(to_int, split(p[1], '-')), map(to_int, split(p[2], '-'))
    (rng2[2] >= rng1[1] >= rng2[1]) || (rng1[2] >= rng2[1] >= rng1[1])
end
open("input.txt", "r") do io
    lines = readlines(io)
    assign = map(ln -> split(ln, ','), lines)
    sum(map(f, assign))
end