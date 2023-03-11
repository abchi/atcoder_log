s = gets.chomp.chars

s.size.times do |i|
  s[i], s[i + 1] = s[i + 1], s[i] if i.even?
end

puts s.join