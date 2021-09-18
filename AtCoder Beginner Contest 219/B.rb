s1 = gets.chomp
s2 = gets.chomp
s3 = gets.chomp
t = gets.chomp.chars.map(&:to_i)

result = []
s = [s1, s2, s3]
t.each do |x|
  result << s[x-1]
end

puts result.join
