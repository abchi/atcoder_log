n = gets.chomp

n.size.times do
  n = n[0..-2] if n[-1] == '0'
end

puts n == n.reverse ? 'Yes' : 'No'
