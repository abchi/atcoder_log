n, k, x = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

a.insert k, x

puts a.join(' ')
