n = gets.to_i
a = gets.chomp.split.map(&:to_i)

count = 0
until a.count { _1 > 0 } <= 1
  a.sort!
  a.reverse!
  a[0] -= 1
  a[1] -= 1
  count += 1
end

puts count
