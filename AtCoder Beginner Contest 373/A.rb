s = []
12.times { s << gets.chomp }

count = 0
s.each.with_index(1) do |x, i|
  count += 1 if x.size == i
end

puts count
