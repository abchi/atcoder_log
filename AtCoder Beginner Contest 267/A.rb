s = gets.chomp
week = %w/Monday Tuesday Wednesday Thursday Friday/

puts week.reverse.index(s) + 1
