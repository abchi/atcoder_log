n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

ab = a + b
ab.sort!

hash = {}
ab.each.with_index(1) { |v, i| hash[v] = i }

aa = a.map { |x| hash[x] }
bb = b.map { |x| hash[x] }

puts aa.join ' '
puts bb.join ' '
