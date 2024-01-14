n = gets.to_i

num = [0, 2, 4, 6, 8]
result = []
(n - 1).to_s(5).chars.each do |i|
  result << num[i.to_i]
end

puts result.join
