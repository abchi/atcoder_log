a, b = gets.split.map(&:to_i)

puts (1*a..6*a).include?(b) ? 'Yes' : 'No'
