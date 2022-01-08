k = gets.to_i

result = k.to_s(2)
result.gsub!('1', '2')

puts result
