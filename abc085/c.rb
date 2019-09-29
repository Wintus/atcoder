# frozen_string_literal: true

n, y = gets.split.map(&:to_i)

t =
  catch(:found) do
    (0..n).each do |a|
      (0..(n - a)).each do |b|
        c = n - a - b
        next unless 10_000 * a + 5000 * b + 1000 * c == y

        throw(:found, [a, b, c])
      end
    end
    [-1] * 3
  end

puts t.join(' ')
