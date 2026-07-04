x, y, l, r, a, b = gets.chomp.split.map(&:to_i)

sum = 0
(a...b).each do |c|
  sum += case c
         when l...r
           x
         else
           y
         end
end

puts sum
