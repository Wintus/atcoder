require 'prime'

MAX = 100_000

# Eratosthenes Sieve
is_prime = {}
Prime.each(MAX) do |p|
  is_prime[p] = true
end

# 2017-like?
# cumulative sums
cs = Array.new(MAX) { |i| is_prime[i] && is_prime[(i + 1) / 2] ? 1 : 0 }
       .inject([0]) { |a, n| a << a.last + n }

# query
q = gets.to_i
q.times do
  l, r = gets.split.map(&:to_i)
  # [l,r) = l...r
  p cs[r + 1] - cs[l]
end
