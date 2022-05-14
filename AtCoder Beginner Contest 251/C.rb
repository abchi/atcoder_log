n = gets.to_i
st = []
1.upto(n) do |i|
  line = gets.split
  st << [i, line[0].chomp, line[1].to_i]
end

st.uniq! { |item| item[1] }
puts st.sort { |a, b| b[2] <=> a[2] }[0][0]
