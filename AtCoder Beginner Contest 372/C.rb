n, q = gets.chomp.split.map(&:to_i)
s = gets.chomp
xc = []
q.times do
  line = gets.chomp.split
  xc << [line[0].to_i, line[1]]
end

count = s.scan('ABC').size
xc.each do |x, c|
  index1 = x - 3
  index1 = 0 if index1 < 0
  index2 = x + 1
  a = s[index1..index2].include? 'ABC'
  s[x - 1] = c
  b = s[index1..index2].include? 'ABC'
  count += 1 if !a && b
  count -= 1 if a && !b
  puts count
end
