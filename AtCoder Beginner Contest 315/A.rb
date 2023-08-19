s = gets.chomp

s.delete! 'a'
s.delete! 'e'
s.delete! 'i'
s.delete! 'o'
s.delete! 'u'

puts s
