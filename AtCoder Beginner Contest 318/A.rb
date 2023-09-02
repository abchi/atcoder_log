n, m, p = gets.split.map(&:to_i)

x = m
count = 0
while n >= x
  count += 1
  x += p
end

puts count
