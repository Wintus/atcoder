n = gets.to_i
ns = gets.split.map(&:to_i)

n.times do
  ms = ns.each_cons(2).map { |(a, b)| a + b }
  neg = ms.any?(&:negative?)
  p ms, neg
  break if neg

  _, i = ms.each_with_index.max_by { |m, _| m * -1 }
  p i

  ns[i] = ns[i] * -1
  ns[i + 1] = ns[i + 1] * -1

  p ns
end

p ns.reduce(:+)
