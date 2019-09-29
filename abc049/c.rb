# frozen_string_literal: true

suffixes = %w[dream dreamer erase eraser]

s = gets.strip

# greedy
while (suffix = suffixes.find { |d| s.end_with?(d) })
  i = suffix.size
  s.slice!(-i, i)
end
puts s.empty? ? 'YES' : 'NO'
