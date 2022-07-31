y = gets.to_i

remainder = y % 4
ans = if remainder == 2
        y
      else
        calc = y + remainder
        calc += 2 if remainder == 0
        calc
      end

puts ans
