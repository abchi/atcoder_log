n = gets.to_i
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

result = []
a.each.with_index(1) do |x, i|
  result << (b[x - 1] == i)
end

puts result.all? ? 'Yes' : 'No'
