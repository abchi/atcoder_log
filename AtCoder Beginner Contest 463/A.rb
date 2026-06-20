x, y = gets.chomp.split.map(&:to_i)

puts x * 9 == y * 16 ? 'Yes' : 'No'
