gets # n
vs = gets.split.map(&:to_i)
cs = gets.split.map(&:to_i)

p vs.zip(cs)
    .map { |(v, c)| v - c }
    .select { |v| v > 0 }
    .reduce(0, :+)
