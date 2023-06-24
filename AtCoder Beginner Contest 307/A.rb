n = gets.to_i
a = gets.split.map(&:to_i)

puts a.each_slice(7).map(&:sum).join(' ')
