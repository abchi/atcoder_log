n = gets.chomp.chars

puts n.count('1') == 1 && n.count('2') == 2 && n.count('3') == 3 ? 'Yes' : 'No'
