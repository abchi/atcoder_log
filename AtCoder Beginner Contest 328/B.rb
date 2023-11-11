n = gets.to_i
d = gets.chomp.split.map(&:to_i)

count = 0
1.upto(n).with_index do |month, i|
  1.upto(d[i]) do |day|
    date = "#{month}#{day}"
    count += 1 if date.size == date.count(date[0])
  end
end

puts count
