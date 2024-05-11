n, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

count = 0
sum = 0
a.each do |x|
  if sum + x > k
    count += 1
    sum = x
  else
    sum += x
  end
end
count += 1

puts count
