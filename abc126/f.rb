m, k = gets.split.map(&:to_i)

if m == 0
  if k != 0
    p -1
  else
    puts '0 0'
  end
elsif m == 1
  if k != 0
    p -1
  else
    puts '0 0 1 1'
  end
elsif k >= 2 ** m
  p -1
elsif k == 0
  max = 1 << m
  puts [*0..max, *max.downto(0)].join(' ')
else
  max = 1 << m
  ns = [*0..k, *(k+1)..max]
  puts [*ns, k, *ns.reverse, k].join(' ')
end
