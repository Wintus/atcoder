def bit_count(n)
  c = 0
  while n > 0
    c += n & 1
    n = n >> 1
  end
  c
end
