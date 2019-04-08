# 4 neighbors
dx = [1, 0, -1, 0]
dy = [0, 1, 0, -1]
# 8 neighbors
_dx = [*dx, 1, -1, -1, 1]
_dy = [*dy, 1, 1, -1, -1]
# grid: 8
dx = [1, 1, 0, -1, -1, -1, 0, 1]
dy = [0, 1, 1, 1, 0, -1, -1, -1]
DYX = dy.zip(dx)

attr_accessor :h, :w, :grid, :hr, :wr

@h, @w = gets.split.map(&:to_i)

def grid
  @grid ||= Array.new(@h) { gets.chomp.chars }
end

def hr
  @hr ||= [0...@h]
end

def wr
  @wr ||= [0...@w]
end

def neighbors(h, w)
  DYX
    .map { |dy, dx| [h + dy, w + dx] }
    .select { |r, c| hr.include?(r) && wr.include?(c) }
    .map { |hw| grid.dig(*hw) }
end

# [
#   [ -1, -1 ], [  0, -1 ], [ 1, -1 ],
#   [ -1,  0 ],             [ 1,  0 ],
#   [ -1,  1 ], [  0,  1 ], [ 1,  1 ]
# ]
