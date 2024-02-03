n = gets.to_i
a = gets.chomp.split.map(&:to_i)

min = Float::INFINITY
sum = 0
a.each do |x|
  sum += x
  min = [min, sum].min
end

puts a.sum + (min < 0 ? min.abs : 0)
