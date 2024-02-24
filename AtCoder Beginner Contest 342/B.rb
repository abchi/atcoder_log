n = gets.to_i
p = gets.chomp.split.map(&:to_i)
q = gets.to_i
ab = []
q.times { ab << gets.chomp.split.map(&:to_i) }

ab.each do |a, b|
  puts p.index(a) < p.index(b) ? a : b
end
