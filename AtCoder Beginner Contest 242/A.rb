a, b, c, x = gets.split.map(&:to_f)

result = case x
         when 1..a
           1
         when a + 1..b
           c / (b - a)
         else
           0
         end

puts result
