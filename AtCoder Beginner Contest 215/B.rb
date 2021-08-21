n = gets.to_i

ans = 0
k = 1

while 2 ** k <= n
  ans = k
  k += 1
end

puts ans
