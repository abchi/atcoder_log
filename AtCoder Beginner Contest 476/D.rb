n, m, k = gets.chomp.split.map(&:to_i)
x, y = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
a.sort!
b = gets.chomp.split.map(&:to_i)
b.sort!

sa = [0]
a.each { sa << sa[-1] + _1 }
sb = [0]
b.each { sb << sb[-1] + _1 }
sy = [0]
b.each { sy << sy[-1] + (_1 + k - 1) / k }

money = x + y * k
result = 0
0.upto(m) do |i|
  break if sy[i] > y

  l = 0
  r = n
  while l < r
    mid = (l + r + 1) / 2
    sb[i] + sa[mid] <= money ? l = mid : r = mid - 1
  end

  result = [result, i + l].max
end

puts result
