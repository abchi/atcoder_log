s = gets.chomp
a, b = s.split('x').map(&:to_i)

puts a * b
