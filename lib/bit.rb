def msb(x)
  x.bit_length - 1
end

def lsb(x)
  msb(x & -x)
end
