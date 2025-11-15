x = gets.to_i

a = x.to_s.chars
zero_count = a.count '0'

a.delete '0'
a.sort!
a.insert 1, '0' * zero_count

puts a.join
