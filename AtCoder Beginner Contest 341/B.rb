n = gets.to_i
a = gets.chomp.split.map(&:to_i)
st = []
(n - 1).times { st << gets.chomp.split.map(&:to_i) }

loop do
  aa = a.dup
  st.each.with_index do |st, i|
    s, t = st
    count = a[i] / s
    a[i] %= s
    a[i + 1] += t * count
  end
  break if aa == a
end

puts a[n - 1]
