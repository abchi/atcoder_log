n = gets.to_i
a = gets.chomp.split.map(&:to_i)
k = gets.to_i

puts a.count { _1 >= k }
