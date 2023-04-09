s = gets.chomp.chars

b = s.filter_map.with_index { |element, i| i if element == 'B' }
r = s.filter_map.with_index { |element, i| i if element == 'R' }
k = s.index 'K'

puts (b[0].odd? && b[1].even? || b[0].even? && b[1].odd?) && k.between?(r[0], r[1]) ? 'Yes' : 'No'
