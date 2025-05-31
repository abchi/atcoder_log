n = gets.to_i
a = gets.chomp.split.map(&:to_i)

a.uniq!
a.sort!

puts a.size
puts a.join ' '
