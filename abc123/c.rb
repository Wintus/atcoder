# frozen_string_literal: true

# < 2^50
n = gets.to_i

caps = Array.new(5) { gets.to_i }
cap = caps.min # bottle neck

groups = (n + cap - 1) / cap
p groups + 4 # (i - 1) + (5 - i)
