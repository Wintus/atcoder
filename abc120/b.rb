a, b, k = gets.split.map(&:to_i)
p a.gcd(b).downto(1).select { |n| a % n == 0 && b % n == 0 }[k - 1]
