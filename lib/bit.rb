# frozen_string_literal: true

def msb(x)
  x.bit_length - 1
end

def lsb(x)
  msb(x & -x)
end

def bit_count(n)
  c = 0
  while n > 0
    c += n & 1
    n = n >> 1
  end
  c
end
