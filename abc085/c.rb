n, y = gets.split.map(&:to_i)

t =
  (0..n)
  .flat_map { |a| (0..(n - a)).map { |b| [a, b] } }
  .lazy
  .map { |(a, b)| [a, b, n - a - b] }
  .find { |(a, b, c)| 10_000 * a + 5000 * b + 1000 * c == y }
t ||= [-1] * 3

puts t.join(' ')
