n = gets.to_i
st = []
n.times do
  st << gets.split
end

result = 'Yes'
st.each.with_index do |(s, t), i|
  array = (st - [st[i]]).flatten
  result = 'No' if array.count(s) >= 1 && array.count(t) >= 1 || array.empty?
end

puts result
