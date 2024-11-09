n, k = gets.chomp.split.map(&:to_i)
s = gets.chomp

t = s.split 'X'

puts t.map { _1.size / k }.sum
