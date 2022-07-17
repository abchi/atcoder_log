n, x, y, z = gets.split.map(&:to_i)
member = (1..n).to_a
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
s = a.zip(b).map(&:sum)

aa = member.zip(a).to_h
bb = member.zip(b).to_h
ss = member.zip(s).to_h

aa = aa.sort_by { |k, v| -v }.to_h
bb = bb.sort_by { |k, v| -v }.to_h
ss = ss.sort_by { |k, v| -v }.to_h

result = []
result << aa.to_a[0...x].map { |item| item[0] }
result.flatten!

result.each do |x|
  bb.delete x
  ss.delete x
end

result << bb.to_a[0...y].map { |item| item[0] }
result.flatten!

result.each do |x|
  ss.delete x
end

result << ss.to_a[0...z].map { |item| item[0] }
result.flatten!

result.sort!

puts result
