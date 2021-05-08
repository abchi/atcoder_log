n = gets.to_i
a = gets.split.map(&:to_i)

remainder = a.map { |item| item % 200 }
key = remainder.uniq

count = []
key.each do |k|
  count << remainder.count(k)
end

result = 0
count.each do |c|
  result += c * (c - 1) / 2
end

puts result
