to_int = x -> parse(Int, x)
process(p) = map(to_int, split(p[1], '-')), map(to_int, split(p[2], '-'))
inside(a, b) = (a[1] <= b[1]) && (a[2] >= b[2])
intersect_(rngs) = (rngs[1][2] >= rngs[2][1] >= rngs[1][1]) || (rngs[2][2] >= rngs[1][1] >= rngs[2][1])
function part1(ranges)
    ranges |> process |> p -> inside(p[1], p[2]) || inside(p[2], p[1])
end
function part2(ranges)
    ranges |> process |> intersect_
end
open("input.txt", "r") do io
    assign = io |> readlines |> lines -> map(ln -> split(ln, ','), lines)
    sum(map(part1, assign)), sum(map(part2, assign))
end