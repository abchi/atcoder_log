n = gets.to_i
s = gets.chomp

puts s.include?('ab') || s.include?('ba') ? 'Yes' : 'No'
