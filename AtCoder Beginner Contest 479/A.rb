n = gets.to_i
a = gets.chomp.split.map(&:to_i)

sum = 0
a.each.with_index(1) do |x, i|
  sum += x if i.odd?
end

puts sum
