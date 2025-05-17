n, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

sum = 1
a.each do |x|
  sum *= x
  sum = 1 if sum.to_s.size > k
end

puts sum
