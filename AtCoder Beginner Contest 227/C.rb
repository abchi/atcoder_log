n = gets.to_i

count = 0
a = 1
while a <= (n + 1)
  break if a * a * a > n
  b = a
  na = n / a
  while b <= (n + 1)
    break if a * b * b > n
    count += na / b - b + 1
    b += 1
  end
  a += 1
end

puts count
