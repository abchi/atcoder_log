x = gets.to_i

n = 0
sum = 1
while sum != x
  n += 1
  sum *= n
end

puts n
