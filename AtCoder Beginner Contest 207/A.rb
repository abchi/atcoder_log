a, b, c = gets.split.map(&:to_i)

puts [a, b, c].combination(2).to_a.map(&:sum).max
