n, x, y, z = gets.chomp.split.map(&:to_i)

r = x <= y ? (x..y) : (y..x)
puts r.include?(z) ? 'Yes' : 'No'
