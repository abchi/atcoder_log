s = gets.chomp
t = gets.chomp

result = if t[-1] == 'X'
           s.upcase =~ /#{t[0]}.*#{t[1]}/
         else
           s.upcase =~ /#{t[0]}.*#{t[1]}.*#{t[2]}/
         end

puts result.nil? ? 'No' : 'Yes'
