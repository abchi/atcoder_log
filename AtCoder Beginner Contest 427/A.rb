s = gets.chomp.chars

index = s.size / 2
s.delete_at index

puts s.join ''
