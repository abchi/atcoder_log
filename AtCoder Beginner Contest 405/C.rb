n = gets.to_i
a = gets.chomp.split.map(&:to_i)

puts (a.sum ** 2 - a.map { _1 ** 2 }.sum) / 2
