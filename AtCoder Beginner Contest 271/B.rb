n, q = gets.split.map(&:to_i)

l = []
a = []
n.times do
  line = gets.split.map(&:to_i)
  l << line[0]
  a << line[1..]
end

st = []
q.times do
  st << gets.split.map(&:to_i)
end

result = []
st.each do |s, t|
  result << a[s - 1][t - 1]
end

puts result
