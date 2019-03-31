r = /[ATCG]+/
s = gets.strip

puts s.scan(r).map(&:size).max
