n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

sum = a.sum

puts a.uniq.sort.any? { sum - _1 == m } ? 'Yes' : 'No'
