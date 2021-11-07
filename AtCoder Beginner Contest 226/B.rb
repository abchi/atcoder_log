n = gets.to_i
l = []
n.times do
  l << gets.split.map(&:to_i)
end

result = []
l.each do |x|
  result << x[1..]
end

puts result.uniq.count
