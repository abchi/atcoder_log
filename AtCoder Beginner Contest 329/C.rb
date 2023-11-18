n = gets.to_i
s = gets.chomp

count = 0
s.chars.uniq.sort.each { |x| count += s.scan(/#{x}+/).map(&:size).max }

puts count
