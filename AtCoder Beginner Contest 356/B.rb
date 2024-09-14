n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
x = []
n.times { x << gets.chomp.split.map(&:to_i) }

puts a.zip(x.transpose.map(&:sum)).all? { _1 <= _2 } ? 'Yes' : 'No'
