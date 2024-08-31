a, b = gets.chomp.split.map(&:to_i)

result = if (a - b) == 0
           1
         elsif (a - b).odd?
           2
         elsif (a - b).even?
           3
         end

puts result
