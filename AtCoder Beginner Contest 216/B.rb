n = gets.to_i
st = []
n.times do
  st << gets.chomp.split
end

puts st.size == st.uniq.size ? 'No' : 'Yes'
