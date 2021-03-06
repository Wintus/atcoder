# frozen_string_literal: true

n, q = gets.split.map(&:to_i)
s = gets.strip

ns =
  Array
  .new(n) { |i| s[i, 2] == 'AC' ? 1 : 0 }
  .inject([0]) { |acc, m| acc << acc.last + m }
# p ns

q.times do
  l, r = gets.split.map(&:to_i)
  # p l..r
  p ns[r - 1] - ns[l - 1]
end
