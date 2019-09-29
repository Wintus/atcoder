# frozen_string_literal: true

# (t, x, y)
INIT = [0] * 3

n = gets.to_i
# (t, x, y)[]
plans = Array.new(n + 1)
plans[0] = INIT
plans[1..-1] = Array.new(n) { gets.split.map(&:to_i) }

p = plans.each_cons(2).all? do |p0p1|
  dt, dx, dy = p0p1.transpose.map { |a0, a1| a1 - a0 }
  dist = dx.abs + dy.abs # move 4n
  d = dt - dist

  # reachable & parity match
  d >= 0 && d.even?
end

puts p ? 'Yes' : 'No'
