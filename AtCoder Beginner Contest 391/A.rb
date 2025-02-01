d = gets.chomp

result = case d
         when 'N'
           'S'
         when 'E'
           'W'
         when 'W'
           'E'
         when 'S'
           'N'
         when 'NE'
           'SW'
         when 'NW'
           'SE'
         when 'SE'
           'NW'
         when 'SW'
           'NE'
         end

puts result
