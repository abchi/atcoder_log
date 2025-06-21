n = gets.to_i
d = gets.chomp.split.map(&:to_i)

result = []
(n - 1).times do |i|
  sum = 0
  array = []
  d[i..].each do |x|
    sum += x
    array << sum
  end
  result << array
end

result.each do |r|
  puts r.join ' '
end
