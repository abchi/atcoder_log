n, k = gets.chomp.split.map(&:to_i)

count = 0
0.upto(n) do |i|
  sum = i.to_s.chars.map(&:to_i).sum
  count += 1 if sum == k
end

puts count
