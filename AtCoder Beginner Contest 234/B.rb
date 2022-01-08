n = gets.to_i

xy = []
n.times do
  xy << gets.split.map(&:to_i)
end

max = 0
xy.combination(2).to_a.each do |x, y|
  max = [Math.sqrt((y[0] - x[0]) ** 2 + (y[1] - x[1]) ** 2), max].max
end

puts max
