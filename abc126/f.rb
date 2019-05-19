m, k = gets.split.map(&:to_i)

if k >= 2 ** m || (k == 1 && m == 1)
  p -1
else
  ns = []
  (2 ** m).times do |i|
    ns << i << (i ^ k)
  end
  puts ns.join ' '
end
