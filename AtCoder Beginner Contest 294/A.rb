n = gets.to_i
a = gets.split.map(&:to_i)

result = a.select { |x| x.even? }

puts result.join ' '
