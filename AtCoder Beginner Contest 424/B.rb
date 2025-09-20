n, m, k = gets.chomp.split.map(&:to_i)
ab = []
k.times { ab << gets.chomp.split.map(&:to_i) }

player = (1..n).zip(Array.new(n) { 0 }).to_h
result = []
ab.each do |a, b|
  player[a] += 1
  result << a if player[a] == m
end

puts result.join ' '
