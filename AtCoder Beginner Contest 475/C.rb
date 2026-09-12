n, s, l = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

a.unshift 0
d = Array.new(n + 1) { 0 }
(s + 1).upto(n) { d[_1] = d[_1 - 1] + a[_1 - 1] }
(s - 1).downto(1) { d[_1] = d[_1 + 1] + a[_1] }

ans = 1
1.upto(s) do |lc|
  left = d[lc]
  s.upto(n) do |rc|
    right = d[rc]
    cost = left + right + [left, right].min
    break if cost > l

    ans = [ans, rc - lc + 1].max
  end
end

puts ans
