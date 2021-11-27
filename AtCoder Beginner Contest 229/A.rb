s1 = gets.chomp.chars
s2 = gets.chomp.chars

result = if s1[0] == '#' && s2[0] == '#'
           'Yes'
         elsif s1[1] == '#' && s2[1] == '#'
           'Yes'
         elsif  s1[0] == '#' && s1[1] == '#'
           'Yes'
         elsif  s2[0] == '#' && s2[1] == '#'
           'Yes'
         else
           'No'
         end

puts result
