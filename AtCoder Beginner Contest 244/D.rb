s = gets.chomp.split
t = gets.chomp.split

result = 'No'
diff_count = 0
if s == t
  result = 'Yes'
else
  3.times do |i|
    diff_count += 1 if s[i] != t[i]
  end
  result = 'Yes' if diff_count == 3
end

puts result
