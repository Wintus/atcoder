# < 2^50
n = gets.to_i
a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
e = gets.to_i

cap = [a, b, c, d, e]

# n of cities
state = Array.new(6, 0)
# init
state[0] = n

# greedy
cap.reverse!
state.reverse!

# 1 min 1 step
# greedy
def move!(ts, state)
  ts.each.with_index(1) do |cap, city|
    n = [state[city], cap].min
    state[city] -= n
    state[city - 1] += n
  end
end

t = 0
until state.first == n
  move!(cap, state)
  t += 1
end

p t
