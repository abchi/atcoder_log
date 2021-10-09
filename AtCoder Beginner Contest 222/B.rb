n, p = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

result = a.map { |item| item >= p }

puts result.count(false)
