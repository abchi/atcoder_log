n = gets.to_i
a = gets.chomp.split.map(&:to_i)

i = 1
e = a[0]
while i <= e && i <= n
  e = [e, i + a[i - 1] - 1].max
  i += 1
end

puts [e, n].min
