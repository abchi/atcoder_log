mod = 998244353
n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
m = 3000
dp = Array.new(m + 1) { 1 }

n.times do |i|
  nx = Array.new(m + 1) { 0 }
  (a[i]..b[i]).each do |j|
    nx[j] = dp[j]
  end
  dp = nx
  m.times do |i|
    dp[i + 1] += dp[i]
    dp[i + 1] %= mod
  end
end

puts dp[m]
