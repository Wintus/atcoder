# frozen_string_literal: true

gets
ns = gets.split.map(&:to_i)

# min LSB
p ns.map { |n| n & -n }.min.bit_length - 1
