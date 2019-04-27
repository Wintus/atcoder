module Enumerable
  def scan(init)
    inject([init]) { |a, n| a << yield(a.last, n) }
  end

  def cum_sum
    scan(0, &:+)
  end
end
