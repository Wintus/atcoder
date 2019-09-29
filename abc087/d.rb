GRAPH = Hash.new { |h, k| h[k] = {} }

_, m = gets.split.map(&:to_i)
m.times do
  l, r, d = gets.split.map(&:to_i)
  GRAPH[l][r] = d
  GRAPH[r][l] = -d
end

# @param [Integer] x node
# @param [Integer] s score
# @param [<<Integer, Integer>>] vs visited nodes
def dfs(x, s, vs)
  s0, x0 = vs.rassoc(x)
  return s == s0 if x0

  GRAPH[x].all? { |k, v| dfs(k, s + v, vs.dup << [s, x]) }
end

a = GRAPH.each_key.all? { |k| dfs(k, 0, []) }
puts a ? 'Yes' : 'No'
