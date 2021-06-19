n = gets.to_i
money = 0
day = 1

while money < n
  money += day
  day += 1
end

puts day - 1
