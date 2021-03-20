a, b = gets.split.map(&:to_i)
c, d = gets.split.map(&:to_i)

puts [a, b].max - [c, d].min
