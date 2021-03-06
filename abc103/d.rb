# frozen_string_literal: true

_, m = gets.split.map(&:to_i)
rs   = Array.new(m) { gets.split.map(&:to_i) }
_, t = rs.sort_by { |_a, b| b }.reduce([0, 0]) do |x, y|
  n, c = x
  a, b = y
  a < n ? [n, c] : [b, c + 1]
end
p t
