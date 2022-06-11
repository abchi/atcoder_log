r, c = gets.split.map(&:to_i)
a = []
2.times do
  a << gets.split.map(&:to_i)
end

puts a[r - 1][c - 1]
