n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

puts a.sum <= m ? 'Yes' : 'No'
