n, m = gets.split.map(&:to_i)
b = []
n.times do
  b << gets.split.map(&:to_i)
end

answer = []
i = (b[0][0] / 7.0).ceil
index = nil
b.each do |x|
  result = []
  1.upto(7) { |j| result << ((i - 1) * 7 + j) }
  index ||= result.index(x[0])
  answer << (result[index...(index + m)] == x)
  i += 1
end

puts answer.all?(true) ? 'Yes' : 'No'
