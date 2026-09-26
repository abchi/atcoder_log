q = gets.to_i
s = gets.chomp
t = gets.chomp
query = []
q.times { query << gets.chomp.split.map(&:to_i) }

s_size = s.size
t_size = t.size
a = Array.new(s_size + 1) { 0 }
(0..s_size - t_size).each do |i|
  a[i + 1] = a[i] + (s[i, t_size] == t ? 1 : 0)
end

query.each do |l, r|
  r -= t_size - 1
  puts l <= r && a[r] - a[l - 1] > 0 ? 'Yes' : 'No'
end
