n = gets.to_i
t = gets.chomp.split.map(&:to_i)

result = []
s = t.sort
3.times do |i|
  index = t.index s[i]
  result << index + 1
end

puts result.join ' '
