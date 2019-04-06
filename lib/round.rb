# @param [Integer] int
# @param [Integer] scale
def round(int, scale)
  (int + scale - 1) / scale * int
end
