n = gets.to_i
a = gets.chomp.split.map(&:to_i)
x = gets.to_i

puts a.include?(x) ? 'Yes' : 'No'
