n = gets.to_i
a = gets.chomp.split.map(&:to_i)

result = a[0, 3].sort.reverse
puts result[2]

(3...n).each do |i|
  result << a[i]
  result.sort!
  result.reverse!
  result.pop
  puts result[2]
end
