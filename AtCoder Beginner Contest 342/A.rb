s = gets.chomp

table = Hash.new 0
s.scan(/./) { |m| table[m] += 1 }
word = table.sort_by { |k, v| v }[0][0]

puts s.index(word) + 1
