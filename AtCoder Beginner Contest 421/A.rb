n = gets.to_i
s = []
n.times { s << gets.chomp }
x, y = gets.chomp.split

puts s[x.to_i - 1] == y ? 'Yes' : 'No'
