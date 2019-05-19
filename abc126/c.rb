n, k = gets.split.map(&:to_i)

ni = (1r / n)
half = (1r / 2)

ps = (1..n).map do |i|
  if i >= k
    ni
  else
    count = 0
    while i < k
      i *= 2
      count += 1
    end
    ni * half ** count
  end
end

p ps.reduce(:+).to_f
