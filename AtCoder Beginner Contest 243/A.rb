v, a, b, c = gets.split.map(&:to_i)

ans = nil
loop do
  v -= a
  ans = 'F' if v < 0
  break if ans

  v -= b
  ans = 'M' if v < 0
  break if ans

  v -= c
  ans = 'T' if v < 0
  break if ans
end

puts ans
