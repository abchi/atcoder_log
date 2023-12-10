n, m = gets.chomp.split.map(&:to_i)
s = gets.chomp

shirts = 0
s.split('0').each do |x|
  chars = x.chars
  count_1 = chars.count '1'
  count_1 -= m if count_1 > 0
  count_1 = 0 if count_1 < 0
  count_2 = chars.count '2'
  shirts = [count_1 + count_2, shirts].max
end

puts shirts
