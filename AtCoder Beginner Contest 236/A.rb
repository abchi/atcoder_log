s = gets.chomp
a, b = gets.split.map(&:to_i)

c = s[a - 1]
d = s[b - 1]

s[a - 1] = d
s[b - 1] = c

puts s
