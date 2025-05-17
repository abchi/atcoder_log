a, b, c, d = gets.chomp.split.map { _1.rjust 2, '0' }

puts "#{a}#{b}".to_i > "#{c}#{d}".to_i ? 'Yes' : 'No'
