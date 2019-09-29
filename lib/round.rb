# frozen_string_literal: true

# round = group_count * scale
# @param [Integer] int
# @param [Integer] scale
# @return [Integer]
def round(int, scale = 10)
  (int + scale - 1) / scale * scale
end
