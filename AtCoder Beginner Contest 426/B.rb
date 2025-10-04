s = gets.chomp

word = s.chars.uniq.sort
puts s.count(word[0]) == 1 ? word[0] : word[1]
