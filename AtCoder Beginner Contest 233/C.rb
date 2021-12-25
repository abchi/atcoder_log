n, x = gets.split.map(&:to_i)
ball = []
n.times do
  line = gets.split.map(&:to_i)
  l = line[0]
  a = line[1..]
  ball << a
end

count = 0
ball[0].product(*ball[1..]).to_a.each do |b|
  count += 1 if b.inject(:*) == x
end

puts count
