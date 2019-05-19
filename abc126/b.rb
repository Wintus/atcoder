require 'scanf'

s = gets.rstrip

a, b = s.scanf "%2d%2d"
months = 1..12

case [months.include?(a), months.include?(b)]
when [true, true]
  puts 'AMBIGUOUS'
when [false, true]
  puts 'YYMM'
when [true, false]
  puts 'MMYY'
else
  puts 'NA'
end
