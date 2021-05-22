s = gets.chomp
s.reverse!

s.gsub!('6', 's')
s.gsub!('9', 'n')
s.gsub!('s', '9')
s.gsub!('n', '6')

puts s
