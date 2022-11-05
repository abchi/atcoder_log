s = gets.chomp

size = s.size
index = s.reverse.index('a')

puts index.nil? ? -1 : size - index
