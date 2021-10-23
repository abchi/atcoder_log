n = gets.to_i
xy = []
n.times do
  xy << gets.split.map(&:to_i)
end

count = 0
combination = xy.combination(3).to_a
combination.each do |c|
  x1, y1 = c[0]
  x2, y2 = c[1]
  x3, y3 = c[2]
  x1 -= x3
  x2 -= x3
  y1 -= y3
  y2 -= y3
  count += 1 unless x1 * y2 == x2 * y1
end

puts count
