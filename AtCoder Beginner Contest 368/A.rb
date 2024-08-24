n, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

a.rotate!(-k)

puts a.join(' ')
