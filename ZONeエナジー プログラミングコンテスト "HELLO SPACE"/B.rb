n, d, h = gets.split.map(&:to_f)
dh = []
n.to_i.times do
  dh << gets.split.map(&:to_f)
end

result = [0]
dh.each do |x, y|
  result << (x * h - d * y) / (x - d)
end

puts result.max
