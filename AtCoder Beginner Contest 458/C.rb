s = gets.chomp

size = s.size
ans = 0
size.times do |i|
  next unless s[i] == 'C'

  left = i
  right = size - 1 - i

  ans += [left, right].min + 1
end

puts ans
