n = gets.to_i
a = gets.chomp.split.map(&:to_i)

count = 0
a.each_cons(3).each do |x, y, z|
  count += 1 if x < y && y > z
end

puts count
