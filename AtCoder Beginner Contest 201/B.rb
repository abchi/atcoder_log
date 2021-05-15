n = gets.to_i
st = []
n.times do
  st << gets.chomp
end

hash = {}
st.each do |st|
  s, t = st.split
  hash[s] = t.to_i
end

puts hash.sort_by { |_, v| -v }.to_a[1][0]
