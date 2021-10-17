s = gets.chomp.chars

result = []
s.size.times do
  shift = s.shift
  s << shift
  result << s.join
end

puts result.min
puts result.max
