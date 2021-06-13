a, b, c = gets.split.map(&:to_i)

if c.even?
  a = a.abs
  b = b.abs
end

result = if a > b
           '>'
         elsif a < b
           '<'
         else
           '='
         end

puts result
