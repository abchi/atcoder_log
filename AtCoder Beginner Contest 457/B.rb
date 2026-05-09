n = gets.to_i
ln = []
n.times { ln << gets.chomp.split.map(&:to_i) }
x, y = gets.chomp.split.map(&:to_i)

a = []
ln.each { a << _1[1..] }

puts a[x - 1][y - 1]
