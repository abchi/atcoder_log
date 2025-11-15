a, b, c = gets.chomp.split.map(&:to_i)

num = [a, b, c].sort.reverse

puts num.join
