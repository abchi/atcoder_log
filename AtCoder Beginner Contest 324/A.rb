n = gets.to_i
a = gets.split.map(&:to_i)

puts a.uniq.size == 1 ? 'Yes' : 'No'
