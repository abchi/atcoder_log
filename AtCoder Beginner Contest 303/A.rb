n = gets.to_i
s = gets.chomp
t = gets.chomp

s.gsub! /1/, 'l'
t.gsub! /1/, 'l'

s.gsub! /0/, 'o'
t.gsub! /0/, 'o'

puts s == t ? 'Yes' : 'No'
