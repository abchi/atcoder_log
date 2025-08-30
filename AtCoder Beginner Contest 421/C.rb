n = gets.to_i
s = gets.chomp

a = 0
count1 = 0
s.chars.each_with_index do |c, i|
  if c == 'A'
    count1 += (i - a).abs
    a += 2
  end
end

a = 1
count2 = 0
s.chars.each_with_index do |c, i|
  if c == 'A'
    count2 += (i - a).abs
    a += 2
  end
end

puts [count1, count2].min
