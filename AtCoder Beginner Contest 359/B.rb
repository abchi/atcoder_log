n = gets.to_i
a = gets.chomp.split.map(&:to_i)

puts a.each_cons(3).count { _1[0] == _1[-1] }
