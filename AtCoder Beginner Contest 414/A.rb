n, l, r = gets.chomp.split.map(&:to_i)
xy = []
n.times { xy << gets.chomp.split.map(&:to_i) }

puts xy.count { |x, y| x <= l && r <= y }
