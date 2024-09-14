r, g, b = gets.split.map(&:to_i)
c = gets.chomp

result = case c
         when 'Red'
           [g, b].min
         when 'Green'
           [r, b].min
         when 'Blue'
           [r, g].min
         end

puts result
