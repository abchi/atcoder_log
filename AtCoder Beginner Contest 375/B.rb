n = gets.to_i
xy = []
n.times { xy << gets.chomp.split.map(&:to_i) }

sum = 0
xy.prepend [0, 0]
xy << [0, 0]
(n + 1).times do |i|
  a, b = xy[i]
  c, d = xy[i + 1]
  sum += Math.sqrt((a - c) ** 2 + (b - d) ** 2)
end

puts sum
