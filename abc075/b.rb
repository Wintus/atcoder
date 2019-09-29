# space bomb
BOMB = '#'

dx = [1, 0, -1, 0, 1, -1, -1, 1]
dy = [0, 1, 0, -1, 1, 1, -1, -1]
DYX = dy.zip(dx)

# const hack
H, W = gets.split.map(&:to_i)
GRID = Array.new(H) { gets.chomp.chars }

HR = 0...H
WR = 0...W

def neighbors(h, w)
  DYX
    .map { |dy, dx| [h + dy, w + dx] }
    .select { |r, c| HR.include?(r) && WR.include?(c) }
    .map { |hw| GRID.dig(*hw) }
end

H.times do |r|
  row = Array.new(W) do |c|
    cell = GRID.dig(r, c)
    cell == BOMB ? cell : neighbors(r, c).count(BOMB)
  end
  puts row.join
end
