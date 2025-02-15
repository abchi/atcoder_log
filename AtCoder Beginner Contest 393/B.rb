s = gets.chomp

count = 0
a = s.chars.map.with_index { |e, i| e == 'A' ? i : nil }.compact
b = s.chars.map.with_index { |e, i| e == 'B' ? i : nil }.compact
c = s.chars.map.with_index { |e, i| e == 'C' ? i : nil }.compact
a.product(b, c).each do |i, j, k|
  count += 1 if j - i == k - j && i < j && j < k
end

puts count
