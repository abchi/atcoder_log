s = gets.chomp

num = (1..349).to_a
num.delete 316
contests = num.map { 'ABC' + "%03d" % _1 }

puts contests.include?(s) ? 'Yes' : 'No'
