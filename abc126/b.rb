s = gets

ms = 1..12
a = s[0, 2].to_i
b = s[2, 2].to_i

if ms.include?(a) && ms.include?(b)
  puts 'AMBIGUOUS'
elsif !ms.include?(a) && ms.include?(b)
  puts 'YYMM'
elsif ms.include?(a) && !ms.include?(b)
  puts 'MMYY'
else
  puts 'NA'
end
