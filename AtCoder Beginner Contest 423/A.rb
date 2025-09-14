x, c = gets.chomp.split.map(&:to_i)

cost = c
sum = 0
while (x - cost - sum) >= 1000
  sum += 1000
  cost += c
end

puts sum
