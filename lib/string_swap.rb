class String
  def swap!(i, j = i + 1)
    tap do |s|
      s[i], s[j] = s[j], s[i]
    end
  end

  def swap(i, j = i + 1)
    dup.swap!(i, j)
  end
end
