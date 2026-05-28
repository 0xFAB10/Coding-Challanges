#!/usr/bin/env bash


square_of_sum() {
    local n=$1
    local sum=$((n * (n + 1) / 2))
    echo $((sum * sum))
}

sum_of_squares() {
    local n=$1
    echo $((n * (n + 1) * (2 * n + 1) / 6))
}

difference() {
    local n=$1
    local sq_sum=$(square_of_sum $n)
    local sum_sq=$(sum_of_squares $n)
    echo $((sq_sum - sum_sq))
}

"$@"