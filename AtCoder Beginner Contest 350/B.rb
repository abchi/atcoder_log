n, q = gets.chomp.split.map(&:to_i)
t = gets.chomp.split.map(&:to_i)

teeth = Array.new(n) { true }
t.each { teeth[_1 - 1] = !teeth[_1 - 1] }

puts teeth.count true
