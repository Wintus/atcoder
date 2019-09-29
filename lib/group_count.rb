# frozen_string_literal: true

# @example
#   group_count(17, 3) #=> 6
def group_count(n, bin_size)
  (n + bin_size - 1) / bin_size
end
