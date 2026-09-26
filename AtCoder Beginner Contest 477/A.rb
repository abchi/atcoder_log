c = gets.chomp

light = %w[B Y R]
index = light.index c

puts light.rotate(index + 1).first
