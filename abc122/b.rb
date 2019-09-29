# frozen_string_literal: true

r = /[ATCG]+/
s = gets.strip

puts s.scan(r).map(&:size).max
