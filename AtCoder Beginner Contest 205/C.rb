a, b, c = gets.split.map(&:to_i)

result = if c.even?
           a = a.abs
           b = b.abs
           if a > b
             '>'
           elsif a < b
             '<'
           else
             '='
           end
         else
           if a > b
             '>'
           elsif a < b
             '<'
           else
             '='
           end
         end

puts result
