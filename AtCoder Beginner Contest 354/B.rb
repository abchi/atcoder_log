n = gets.to_i
sc = []
n.times do
  line = gets.chomp.split
  sc << [line[0], line[1].to_i]
end

sc.sort_by! { |k, v| [k, v] }
sum = sc.to_h.values.sum

puts sc[sum % n][0]
