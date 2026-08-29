n, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
a.sort!

g = a.group_by(&:itself).transform_values(&:size)
v = g.values
max = v.max

puts v.select { _1 >= max - 1 }.size
