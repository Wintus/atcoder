re = /dream$|dreamer$|erase$|eraser$/

s = gets.strip

b =
  until s.empty?
    unless s.gsub!(re, '')
      break 'NO'
    end
  end
puts b || 'YES'
