a, b = gets.split.map(&:to_i)

ns = [a, a - 1, b, b - 1].sort
p ns[-1] + ns[-2]
