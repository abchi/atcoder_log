m, d = gets.chomp.split.map(&:to_i)
yyyy, mm, dd = gets.chomp.split.map(&:to_i)

result = if d == dd && m == mm
           [yyyy + 1, 1, 1]
         elsif dd == d
           [yyyy, mm + 1, 1]
         else
           [yyyy, mm, dd + 1]
         end

puts result.join ' '
