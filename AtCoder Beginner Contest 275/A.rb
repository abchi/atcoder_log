n = gets.to_i
h = gets.split.map(&:to_i)

max = h.max
index = h.index max

puts index + 1
