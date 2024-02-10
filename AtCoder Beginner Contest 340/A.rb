a, b, d = gets.chomp.split.map(&:to_i)

n = a
result = []
while n <= b
  result << n
  n += d
end

puts result.join ' '
