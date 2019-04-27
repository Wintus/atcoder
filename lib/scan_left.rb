module Enumerable
  def scan_left(init)
    inject([init]) { |a, n| a << yield(a.last, n) }
  end

  def cum_sum
    scan_left(0, &:+)
  end
end
