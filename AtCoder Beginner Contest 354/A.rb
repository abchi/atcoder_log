h = gets.to_i

day = 0
height = 0

while height <= h
  height += 2 ** day
  day += 1
end

puts day
