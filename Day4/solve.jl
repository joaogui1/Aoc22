# Part1
to_int = x -> parse(Int, x)
process(p) = map(to_int, split(p[1], '-')), map(to_int, split(p[2], '-'))
inside(a, b) = (a[1] <= b[1]) && (a[2] >= b[2])
function f(p)
    rng1, rng2 = process(p)
    inside(rng1, rng2) || inside(rng2, rng1)
end
open("input.txt", "r") do io
    assign = io |> readlines |> lines -> map(ln -> split(ln, ','), lines)
    sum(map(f, assign))
end
# Part2
function f(p)
    rng1, rng2 = process(p)
    (rng2[2] >= rng1[1] >= rng2[1]) || (rng1[2] >= rng2[1] >= rng1[1])
end
open("input.txt", "r") do io
    assign = io |> readlines |> lines -> map(ln -> split(ln, ','), lines)
    sum(map(f, assign))
end