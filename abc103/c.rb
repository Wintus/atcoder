# frozen_string_literal: true

n = gets.to_i
ns = gets.split.map(&:to_i)
p ns.reduce(:+) - n
