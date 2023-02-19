n, k = gets.split.map(&:to_i)
s = gets.chomp.chars

result = []
count = 0
s.each.with_index do |x, i|
  if x == 'o' && count < k
    count += 1
    result << 'o'
  else
    result << 'x'
  end
end

puts result.join
