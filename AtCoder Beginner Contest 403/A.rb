n = gets.to_i
a = gets.chomp.split.map(&:to_i)

sum = 0
a.each.with_index do |x, i|
  sum += x if i.even?
end

puts sum
