n, s, k = gets.chomp.split.map(&:to_i)
pq = []
n.times { pq << gets.chomp.split.map(&:to_i) }

sum = 0
pq.each { |p, q| sum += p * q }
sum += k if sum < s

puts sum
