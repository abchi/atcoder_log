n = gets.to_i
xy = []
n.times { xy << gets.chomp.split.map(&:to_i) }

xy.sort_by! { |x, y| x }

min = Float::INFINITY
ans = 0
xy.each do |x, y|
  ans += 1 if min > y
  min = y if y < min
end

puts ans
