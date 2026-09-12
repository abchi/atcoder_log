s = gets.chomp

result = []
s.each_char do |x|
  result << x
  result << 'o'
end
result.pop

puts result.join
