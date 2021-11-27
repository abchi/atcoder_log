a, b = gets.split.map(&:chars)

max_length = [a.size, b.size].max
a.reverse!
b.reverse!

result = 'Easy'
max_length.times do |i|
  if a[i].to_i + b[i].to_i >= 10
    result = 'Hard'
    break
  end
end

puts result
