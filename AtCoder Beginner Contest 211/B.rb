s1 = gets.chomp
s2 = gets.chomp
s3 = gets.chomp
s4 = gets.chomp

puts [s1, s2, s3, s4].uniq.size == 4 ? 'Yes' : 'No'
