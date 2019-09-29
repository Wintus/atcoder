_n = gets.to_i
ns = gets.split.map(&:to_i)

as = ns.map(&:abs)
sum = as.reduce(:+)

if ns.count(&:negative?).even?
  p sum
else
  p sum - 2 * as.min
end
