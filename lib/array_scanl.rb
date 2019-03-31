class Array
  def scanl(init = 0)
    reduce([init]) do |acc, n|
      acc << acc.last + n
    end
  end
end
