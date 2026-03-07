n, m = gets.chomp.split.map(&:to_i)
c = gets.chomp.split.map(&:to_i)
ab = []
n.times { ab << gets.chomp.split.map(&:to_i) }

hash = Hash.new { 0 }
ab.each do |a, b|
  hash[a] += b
end

sum = 0
c.each.with_index(1) do |x, i|
  if x <= hash[i]
    sum += x
  else
    sum += hash[i]
  end
end

puts sum
