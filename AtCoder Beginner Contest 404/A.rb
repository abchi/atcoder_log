s = gets.chomp

alphabet = ('a'..'z').to_a
s.chars.each { alphabet.delete _1 }

puts alphabet.first
