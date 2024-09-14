xa, ya = gets.chomp.split.map(&:to_i)
xb, yb = gets.chomp.split.map(&:to_i)
xc, yc = gets.chomp.split.map(&:to_i)

ab = (xb - xa) ** 2 + (yb - ya) ** 2
bc = (xc - xb) ** 2 + (yc - yb) ** 2
ca = (xa - xc) ** 2 + (ya - yc) ** 2
side = [ab, bc, ca].sort

puts side[0] + side[1] == side[2] ? 'Yes' : 'No'
