# frozen_string_literal: true

n = gets.to_i
# (t, x, y)[]
plans = Array.new(n + 1)
plans[0] = [0] * 3
plans.fill(1) { gets.split.map(&:to_i) }

p = plans.each_cons(2).all? do |(p0, p1)|
  dt, dx, dy = p0.zip(p1).map { |a0, a1| a1 - a0 }
  dist = dx.abs + dy.abs
  d = dt - dist
  # reachable & parity match
  d >= 0 && d.even?
end

puts p ? 'Yes' : 'No'
