n, k = gets.chomp.split.map(&:to_i)
mod = 10 ** 9

q = [1]
sum = 1
(1..n).each do |i|
  if i < k
    q << 1
    sum += 1
  else
    nv = sum % mod
    sum = (sum + nv - q.shift) % mod
    q << nv
  end
end

puts q.last
