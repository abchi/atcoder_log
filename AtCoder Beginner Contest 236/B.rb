n = gets.to_i
a = gets.split.map(&:to_i)

count = a.group_by(&:itself).transform_values(&:size)

puts count.key(3)
