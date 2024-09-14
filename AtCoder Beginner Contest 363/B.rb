n, t, p = gets.chomp.split.map(&:to_i)
l = gets.chomp.split.map(&:to_i)

day = 0
while l.count { _1 >= t } < p
  day += 1
  l.map! { _1 + 1 }
end

puts day
