a, b, c = gets.split.map(&:to_i)

result = case [a, b, c].uniq.count
         when 1
           a
         when 2
           if a == b
             c
           elsif a == c
             b
           else
             a
           end
         when 3
           0
         end

puts result
