n = gets.to_i
p = gets.chomp.split.map(&:to_i)
q = gets.chomp.split.map(&:to_i)

f = Array.new(n + 1) { 1 }
(1..n).each { f[_1] = f[_1 - 1] * _1 }

rp = 0
used = Array.new(n + 1) { false }
n.times do |i|
  count = 0
  (1...p[i]).each { |x| count += 1 unless used[x] }
  rp += count * f[n - i - 1]
  used[p[i]] = true
end

rq = 0
used = Array.new(n + 1) { false }
n.times do |i|
  count = 0
  (1...q[i]).each { |x| count += 1 unless used[x] }
  rq += count * f[n - i - 1]
  used[q[i]] = true
end

puts rp < rq ? rq - rp - 1 : 0
