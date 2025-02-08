n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

num = (1..n).to_a
a.each { num.delete _1 }

puts num.size
puts num.join ' '
