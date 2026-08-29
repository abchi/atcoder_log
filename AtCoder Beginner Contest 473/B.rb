n = gets.to_i
a = gets.chomp.split.map(&:to_i)

sum = 0
a.group_by(&:itself).transform_values(&:size).each do |k, v|
  sum += k * (v % 2)
end

puts sum
