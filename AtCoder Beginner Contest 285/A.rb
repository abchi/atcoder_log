a, b = gets.split.map(&:to_i)

puts [2 * a, 2 * a + 1].include?(b) ? 'Yes' : 'No'
