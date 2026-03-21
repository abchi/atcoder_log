n, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

r = a.map { |x| x % k }.sort
g = []
(0...n - 1).each do |i|
  g << r[i + 1] - r[i]
end
g << (r[0] + k) - r[-1]

puts k - g.max
