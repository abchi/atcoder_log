s = gets.chomp

s.gsub!('0', 'a')
s.gsub!('1', 'b')

s.gsub!('a', '1')
s.gsub!('b', '0')

puts s
