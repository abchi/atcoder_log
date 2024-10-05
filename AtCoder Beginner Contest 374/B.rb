s = gets.chomp
t = gets.chomp

result = 0
if s != t
  [s.size, t.size].max.times do |i|
    unless s[i] == t[i]
      result = i + 1
      break
    end
  end
end

puts result
