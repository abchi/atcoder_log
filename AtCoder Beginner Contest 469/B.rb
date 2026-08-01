n = gets.to_i
s = gets.chomp.chars

s << 'x'
s.unshift 'x'

puts s.each_cons(3).count { _1.join == 'xxx' }
