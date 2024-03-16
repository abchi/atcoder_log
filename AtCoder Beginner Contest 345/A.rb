s = gets.chomp

puts (s =~ /^<=+>$/).nil? ? 'No' : 'Yes'
