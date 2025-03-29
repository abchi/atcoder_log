n = gets.to_i
s = gets.chomp.chars
t = gets.chomp.chars

count = 0
s.each.with_index do |x, i|
  count += 1 if t[i] != x
end

puts count
