n, x, y = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

d = y - x
m = d / d.gcd(x)

if a.any? { _1 % m != a[0] % m }
  puts -1
  exit
end

l = a.map { _1 * x }.max
r = a.map { _1 * y }.min
s = (a[0] * x) % d
t = l - s
u = (t > 0) ? (t + d - 1) / d : 0

w0 = s + u * d
if w0 > r
  puts -1
  exit
end

w1 = r - ((r - s) % d)
if w1 < l
  puts -1
  exit
end

puts (n * w1 - x * a.sum) / d
