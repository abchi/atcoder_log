s = gets.chomp.chars
t = gets.chomp.chars

if s == t
  puts 'Yes'
  exit
end

result = 'No'
(s.size - 1).times do |i|
  string = s[0...i].join + s[i+1] + s[i] + s[i+2..].join
  result = 'Yes' if string == t.join
end

puts result
