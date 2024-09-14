r = gets.to_i

result = case r
        when 1..99
          100 - r
        when 100..199
          200 - r
        when 200..299
          300 - r
        end

puts result
