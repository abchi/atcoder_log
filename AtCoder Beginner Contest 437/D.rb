mod = 998244353

n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

b.sort!
ps = Array.new(m + 1) { 0 }
m.times { |i| ps[i + 1] = (ps[i] + b[i]) % mod }
sb = ps[m]

result = 0
a.each do |x|
  l = 0
  r = m
  while l < r
    mid = (l + r) / 2
    if b[mid] <= x
      l = mid + 1
    else
      r = mid
    end
  end
  k = l

  left = (x % mod) * k % mod
  left = (left - ps[k]) % mod
  right = (sb - ps[k]) % mod
  right = (right - (x % mod) * (m - k) % mod) % mod

  result = (result + left + right) % mod
end

puts result
