_ = gets # .to_i
ns = gets.split.map(&:to_i)

# anamorphism
m = 0
while ns.all?(&:even?)
  ns.map! { |n| n / 2 }
  m += 1
end

p m
