n, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

count = a.count(k)
(n - 1).times do |i|
  count += 1 if (a[i] < k && k < a[i + 1]) || (a[i] > k && k > a[i + 1])
end

puts count
