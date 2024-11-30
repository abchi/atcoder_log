n, d = gets.chomp.split.map(&:to_i)
s = gets.chomp.chars

d.times do
  index = s.rindex('@')
  s[index] = '.'
end

puts s.join
