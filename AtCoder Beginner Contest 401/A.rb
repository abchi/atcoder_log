s = gets.to_i

result = case s
         when (200..299)
           'Success'
         else
           'Failure'
         end

puts result
