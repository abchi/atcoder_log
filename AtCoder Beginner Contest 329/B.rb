n = gets.to_i
a = gets.chomp.split.map(&:to_i)
a.delete a.max

puts a.max
