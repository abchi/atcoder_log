n = gets.to_i
a = gets.split.map(&:to_i)
combination_count = (n * (n-1)) / 2

same_number_count = 0
hash = a.group_by(&:itself).transform_values(&:size)
hash.each do |k, v|
  same_number_count += (v * (v-1)) / 2
end

puts combination_count - same_number_count
