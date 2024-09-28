s = gets.chomp
key = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]

move = 0
now = s.index 'A'
key.each do |x|
  index = s.index x
  move += (now - index).abs
  now = index
end

puts move
