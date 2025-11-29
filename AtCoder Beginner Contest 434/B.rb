n, m = gets.chomp.split.map(&:to_i)
ab = []
n.times { ab << gets.chomp.split.map(&:to_i) }

birds = (1..m).to_a.zip(Array.new(m) { [] }).to_h
ab.each do |a, b|
  birds[a] += [b]
end

birds.each do |k, v|
  puts v.sum / v.size.to_f
end
