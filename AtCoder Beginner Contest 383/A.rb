n = gets.to_i
tv = []
n.times { tv << gets.chomp.split.map(&:to_i) }

hash = tv.to_h
water = 0
1.upto(hash.keys.max) do |i|
  water -= 1
  water = 0 if water < 0
  water += hash[i].to_i
end

puts water
