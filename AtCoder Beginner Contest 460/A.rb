n, m = gets.chomp.split.map(&:to_i)

count = 0
while m > 0
  x = n % m
  m = x
  count += 1
end

puts count
