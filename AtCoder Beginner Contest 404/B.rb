n = gets.to_i
s = []
n.times { s << gets.chomp.chars }
t = []
n.times { t << gets.chomp.chars }

count = 0
n.times do |i|
  s[i].each.with_index { |x, j| count += 1 if t[i][j] != x }
end
min = count

ss = s.transpose.map(&:reverse)
count = 1
n.times do |i|
  ss[i].each.with_index { |x, j| count += 1 if t[i][j] != x }
end
min = [min, count].min

ss = s.reverse.map(&:reverse)
count = 2
n.times do |i|
  ss[i].each.with_index { |x, j| count += 1 if t[i][j] != x }
end
min = [min, count].min

ss = s.transpose.reverse
count = 3
n.times do |i|
  ss[i].each.with_index { |x, j| count += 1 if t[i][j] != x }
end
min = [min, count].min

puts min
