# frozen_string_literal: true

# A=T, C=G

map = { A: :T, C: :G }
map.merge! map.invert

b = gets.strip
puts map[b.to_sym]
