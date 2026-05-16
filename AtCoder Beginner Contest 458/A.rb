s = gets.chomp.chars
n = gets.to_i

n.times { s.shift }
n.times { s.pop }

puts s.join
