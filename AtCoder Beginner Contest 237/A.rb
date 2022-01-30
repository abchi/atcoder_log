n = gets.to_i

min = -2 ** 31
max = 2 ** 31 - 1

puts n.between?(min, max) ? 'Yes' : 'No'
