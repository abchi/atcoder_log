s = gets.chomp

puts s[1..].split('|').map(&:size).join(' ')
