a, b, c = gets.chomp.split.map(&:to_i)

result = if a == b && b == c
  'Yes'
elsif a + b == c
  'Yes'
elsif a + c == b
  'Yes'
elsif a == b + c
  'Yes'
else
  'No'
end

puts result
