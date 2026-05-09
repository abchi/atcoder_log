n, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

l = a.min
r = a.min + n * k
while l < r
  m = (l + r + 1) / 2
  c = 0
  n.times do |i|
    c += (m - a[i] + i) / (i + 1) if a[i] < m
  end

  c <= k ? l = m : r = m - 1
end

puts l
