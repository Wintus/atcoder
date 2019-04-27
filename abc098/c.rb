class Array
  def scan_left(init = 0)
    reduce([init]) { |a, n| a << yield(a.last, n) }
  end
end

n = gets.to_i
s = gets.chomp.chars

ws = s.map { |c| c.count 'W' }.scan_left(&:+)
es = s.map { |c| c.count 'E' }.scan_left(&:+)

# reversed
es1 = Array.new(n) { |i| es.last - es[i] }

p Array.new(n) { |i| ws[i] + es1[i] }.min
