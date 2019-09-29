# frozen_string_literal: true

require 'set'

n = gets.to_i
ds = Array.new(n) { gets.to_i }

p ds.to_set.size
