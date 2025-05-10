n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

num = (1..m).to_a
count = 0
while (num - a).empty?
  a.pop
  count += 1
end

puts count
