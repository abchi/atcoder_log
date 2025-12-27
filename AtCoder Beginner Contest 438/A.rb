d, f = gets.chomp.split.map(&:to_i)

t = ((d - f) / 7) + 1

puts f + 7 * t - d
