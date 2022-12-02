# Part 1
move_map = Dict("X"=>1, "Y"=>2, "Z"=>3, "A"=>1, "B"=>2, "C"=>3)
canon_diff(x, y) = (x - y + 3)%3
function score_fn(moves)
    ops, my = map(st -> move_map[st], split(moves, ' '))
    canon_diff(ops, my) == 1 && return my
    (ops == my) && return my + 3
    return my + 6
end
total_score = open("input.txt", "r") do io
    lines = readlines(io)
    sum(map(score_fn, lines))
end
println(total_score)
# Part 2
function score_fn2(moves)
    ops_str, my_str = split(moves, ' ')
    ops = move_map[ops_str]
    score = 3*(move_map[my_str] - 1)
    (my_str == "X") && return score + sum(filter(x -> canon_diff(ops, x) == 1, [1, 2, 3]))
    (my_str == "Y") && return score + ops
    (my_str == "Z") && return score + sum(filter(x -> canon_diff(x, ops) == 1, [1, 2, 3]))
end
total_score = open("input.txt", "r") do io
    lines = readlines(io)
    sum(map(score_fn2, lines))
end
println(total_score)