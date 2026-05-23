x = gets.to_i

s = 'HelloWorld'.chars
s.delete_at(x - 1)

puts s.join
