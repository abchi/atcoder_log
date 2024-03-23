n = gets.to_i
a = gets.chomp.split.map(&:to_i)

puts a.each_cons(2).map { _1.inject(:*) }.join ' '
