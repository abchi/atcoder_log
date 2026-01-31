n, k = gets.chomp.split.map(&:to_i)

year = 0
count = 0
until count >= k
  count += (n + year)
  year += 1
end

puts year - 1
