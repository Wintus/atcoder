class Array
  def scan_left(init = 0)
    reduce([init]) do |acc, n|
      acc << acc.last + n
    end
  end
end
