a, b, c = gets.chomp.split.map(&:to_i)

result = if b > c
           ((b..24).include?(a) || (0..c).include?(a))
         else
           (b..c).include?(a)
         end

puts result ? 'No' : 'Yes'
