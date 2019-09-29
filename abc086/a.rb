# frozen_string_literal: true

a, b = gets.split.map(&:to_i)
puts %w[Even Odd][a * b & 1]
