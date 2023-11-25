n, l, r = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

result = []
a.each do |aa|
  num = aa if (l..r).include? aa
  num = l if aa < l
  num = r if aa > r
  result << num
end

puts result.join ' '
