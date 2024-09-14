n = gets.to_i
a = gets.chomp.split.map(&:to_i)

second = a.sort[-2]

puts a.index(second) + 1
