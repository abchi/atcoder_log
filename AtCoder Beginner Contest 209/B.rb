n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

sum = a.map.with_index { |num, index| index.odd? ? num - 1 : num }.sum

puts sum <= x ? 'Yes' : 'No'
