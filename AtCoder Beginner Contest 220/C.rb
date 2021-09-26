n = gets.to_i
a = gets.split.map(&:to_i)
x = gets.to_i

sum = a.sum
times = x / sum
calc = sum * times
count = n * times

a.each do |item|
  calc += item
  count += 1
  break if calc > x
end

puts count
