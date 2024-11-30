n, d = gets.chomp.split.map(&:to_i)
s = gets.chomp.chars

count = 0
count += s.count('.')

if s.count('@') >= d
  count += d
else
  count += s.count('@')
end

puts count
