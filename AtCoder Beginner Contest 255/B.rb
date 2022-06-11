n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
xy = []
n.times do
  xy << gets.split.map(&:to_i)
end

result = 0
xy.each do |x1, y1|
  min = Float::INFINITY
  a.each do |aa|
    x2, y2 = xy[aa - 1]
    dis = Math.sqrt((x2 - x1) ** 2 + (y2 - y1) ** 2)
    min = [min, dis].min
  end
  result = [result, min].max
end

puts result
