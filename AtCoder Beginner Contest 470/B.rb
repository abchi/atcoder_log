n = gets.to_i
c = gets.chomp.split.map(&:to_i)

puts c.tally.values.sort.reverse[1..].sum
