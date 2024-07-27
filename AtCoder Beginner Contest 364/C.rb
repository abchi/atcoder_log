n, x, y = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

a = a.sort.reverse
b = b.sort.reverse

result = []
sum = 0
count = 0
a.each do |aa|
  sum += aa
  count += 1
  break if sum > x
end
result << count

sum = 0
count = 0
b.each do |bb|
  sum += bb
  count += 1
  break if sum > y
end
result << count

puts result.min
