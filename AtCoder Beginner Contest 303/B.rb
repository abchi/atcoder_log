n, m = gets.split.map(&:to_i)
a = []

m.times do
  a << gets.split.map(&:to_i)
end

good_friend = []
a.each do |x|
  good_friend << x.each_cons(2).to_a
end

good_friend.flatten!(1)
good_friend.sort!
good_friend.map(&:sort!)
good_friend.uniq!

puts ((1..n).to_a.combination(2).to_a - good_friend).size
