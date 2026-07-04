a, b = gets.chomp.split.map(&:to_i)

puts a > (b * 2 / 3) ? 'Yes' : 'No'
