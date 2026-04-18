n, m = gets.chomp.split.map(&:to_i)
f = gets.chomp.split.map(&:to_i)

result = f.group_by(&:itself).transform_values(&:size)

puts result.values.all? { _1 == 1 } ? 'Yes' : 'No'
puts result.size == m ? 'Yes' : 'No'
