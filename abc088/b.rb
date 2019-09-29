# frozen_string_literal: true

gets
ns = gets.split.map(&:to_i)

ns.sort!.reverse!
sig = [1, -1].cycle
p ns.map { |n| n * sig.next }.reduce(:+)
