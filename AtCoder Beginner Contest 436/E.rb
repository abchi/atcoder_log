n = gets.to_i
p = gets.chomp.split.map!(&:to_i)

vis = Array.new(n) { false }
ans = 0

n.times do |i|
  next if vis[i]
  x = i
  count = 0
  until vis[x]
    vis[x] = true
    x = p[x] - 1
    count += 1
  end
  ans += count * (count - 1) / 2
end

puts ans
