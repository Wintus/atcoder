# frozen_string_literal: true

suffixes = %w[dream dreamer erase eraser]
suffixes.each(&:reverse!)

s = gets.strip
s.reverse!

# greedy
i = 0
no =
  while i < s.size
    suffix = suffixes.find { |d| s[i, d.size] == d }
    break 'NO' unless suffix

    i += suffix.size
  end

puts no || 'YES'
