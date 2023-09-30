n = gets.to_i
s = gets.chomp

index = s.index 'ABC'
puts index.nil? ? -1 : index + 1
