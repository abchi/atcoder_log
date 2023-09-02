n = gets.to_i
abcd = []
n.times do
  abcd << gets.split.map(&:to_i)
end
list = Array.new(100) { Array.new(100) }

abcd.each do |a, b, c, d|
  (c...d).each do |i|
    list[i][a...b] = Array.new(b - a) { true }
  end
end

puts list.flatten.count(true)
