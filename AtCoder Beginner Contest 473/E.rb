n, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

b = { 0 => 0 }
d = 0
sum = 0
a.each do |x|
  sum = (sum + x) % k
  d = [d, b.fetch(sum, -1) + 1].max
  b[sum] = [b.fetch(sum, -1), d].max
end

puts d
