a1, a2, a3 = gets.chomp.split.map(&:to_i)

result = []
result << (a1 * a2 == a3)
result << (a1 * a3 == a2)
result << (a2 * a3 == a1)

puts result.any? { _1 } ? 'Yes' : 'No'
