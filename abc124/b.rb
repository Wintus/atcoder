# frozen_string_literal: true

gets # n
hs = gets.split.map(&:to_i)

_, c = hs.reduce([0, 0]) { |(h_max, c), h| [[h, h_max].max, c + (h_max <= h ? 1 : 0)] }
p c
