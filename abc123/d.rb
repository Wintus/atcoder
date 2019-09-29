# frozen_string_literal: true

_, _, _, k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)
cs = gets.split.map(&:to_i)

abs = as.product(bs).map { |(a, b)| a + b }
abs.sort!.reverse!

abc = abs.take(k).product(cs).map { |(ab, c)| ab + c }
abc.sort!.reverse!

p(*abc.take(k))
