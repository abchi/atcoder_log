a, b, c, d = gets.chomp.split.map(&:to_i)

count = [a, b, c, d].group_by(&:itself).transform_values(&:size).values.sort

puts (count[0] == 1 && count[-1] == 3 || count[0] == 2 && count[-1] == 2) ? 'Yes' : 'No'
