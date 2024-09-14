sab, sac, sbc = gets.chomp.split

result = if sab == '<'
           if sbc == '<'
             'B'
           else
             if sac == '<'
               'C'
             else
               'A'
             end
           end
         else
           if sac == '<'
             'A'
           else
             if sbc == '<'
               'C'
             else
               'B'
             end
           end
         end

puts result
