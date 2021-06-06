n = gets.to_i
a = gets.split.map(&:to_i)

count = 0
a.each do |x|
  count += (x - 10) if x > 10
end

puts count
