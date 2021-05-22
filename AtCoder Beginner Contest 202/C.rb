n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)
ga = a.group_by(&:itself).transform_values(&:size)
gc = c.group_by(&:itself).transform_values(&:size)

count = 0
gc.each do |key, value|
  count += ga[b[key-1]].to_i * value
end

puts count
