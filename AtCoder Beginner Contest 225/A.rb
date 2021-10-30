s = gets.chomp.chars

puts s.permutation(s.size).to_a.map(&:join).uniq.count
