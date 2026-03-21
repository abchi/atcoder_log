n = gets.to_i

result = []
n.downto(1) do |i|
  result << i
end

puts result.join(',')
