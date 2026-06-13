n, d = gets.chomp.split.map(&:to_i)
st = []
n.times { st << gets.chomp.split.map(&:to_i) }

array = Array.new(1_000_001) { 0 }
st.each do |s, t|
  next if s > t - d
  array[s] += 1
  array[t - d + 1] -= 1
end

1.upto(1_000_000) { array[_1] += array[_1 - 1] }
ans = 0
array.each { ans += _1 * (_1 - 1) / 2 if _1 >= 2 }

puts ans
