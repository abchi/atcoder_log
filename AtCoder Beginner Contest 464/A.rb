s = gets.chomp.chars

e = s.count 'E'
w = s.count 'W'

puts e > w ? 'East' : 'West'
