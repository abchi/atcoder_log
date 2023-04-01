n = gets.to_i
s = gets.chomp.chars

result = if n == 1
           true
         else
           s.each_cons(2).map(&:uniq).map(&:size).all? 2
         end

puts result ? 'Yes' : 'No'
