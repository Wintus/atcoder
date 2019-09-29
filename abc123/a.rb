# frozen_string_literal: true

ps = Array.new(5) { gets.to_i } # a..e
k = gets.to_i

ok = ps.max - ps.min <= k
puts ok ? 'Yay!' : ':('
