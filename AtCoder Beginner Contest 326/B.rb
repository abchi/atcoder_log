n = gets.to_i

loop do
  one = n.to_s[0].to_i
  two = n.to_s[1].to_i
  three = n.to_s[2].to_i
  break if one * two == three
  n += 1
end

puts n
