# frozen_string_literal: true

def digit_sum(n)
  sum = 0
  until n.zero?
    n, q = n.divmod(10)
    sum += q
  end
  sum
end

# main
n, a, b = gets.split.map(&:to_i)

ns = 1..n
r = a..b

p ns.select { |m| r.include?(digit_sum(m)) }.reduce(:+)
