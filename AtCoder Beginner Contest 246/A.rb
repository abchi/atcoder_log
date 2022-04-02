x1, y1 = gets.split.map(&:to_i)
x2, y2 = gets.split.map(&:to_i)
x3, y3 = gets.split.map(&:to_i)

x = [x1, x2, x3]
y = [y1, y2, y3]

xg = x.group_by(&:itself).transform_values(&:size)
yg = y.group_by(&:itself).transform_values(&:size)

puts "#{xg.key(1)} #{yg.key(1)}"
