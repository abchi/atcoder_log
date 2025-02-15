s1, s2 = gets.chomp.split

result = if s1 == 'sick' && s2 == 'sick'
           1
         elsif s1 == 'sick' && s2 == 'fine'
           2
         elsif s1 == 'fine' && s2 == 'sick'
           3
         elsif s1 == 'fine' && s2 == 'fine'
           4
         end

puts result
