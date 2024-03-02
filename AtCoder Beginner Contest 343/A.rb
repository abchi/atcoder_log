a, b = gets.chomp.split.map(&:to_i)

num = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
num.delete_at(num.index(a + b))

puts num.first
