s = gets.chomp

index1 = s.index('|')
index2 = s.rindex('|')

puts s[0...index1] + s[index2 + 1..-1]
