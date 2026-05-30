t = gets.to_i
c = []
t.times { c << gets.chomp.split.map(&:to_i) }

c.each do |x1, y1, r1, x2, y2, r2|
  d = (x2 - x1) ** 2 + (y2 - y1) ** 2
  puts d >= (r1 - r2) ** 2 && d <= (r1 + r2) ** 2 ? 'Yes' : 'No'
end
