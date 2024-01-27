s = gets.chomp

table = Hash.new 0
s.scan(/./) { table[_1] += 1 }

puts table.sort_by { |k, v| [-v, k] }[0][0]
