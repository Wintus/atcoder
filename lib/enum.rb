# frozen_string_literal: true

module Enumerable
  def scan(init)
    inject([init]) { |a, n| a << yield(a.last, n) }
  end

  alias scan_left scan

  def scan_right(init = 0)
    reverse_each.inject([init]) { |a, n| a.unshift yield(a.first, n) }
  end

  def cum_sum
    scan(0, &:+)
  end
end
