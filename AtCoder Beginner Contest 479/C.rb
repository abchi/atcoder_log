n, w = gets.chomp.split.map(&:to_i)
ab = []
n.times { ab << gets.chomp.split.map(&:to_i) }

a, b = ab.transpose
result = 0
(1 << n).times do |bit|
  sum_a = 0
  sum_b = 0

  n.times do |i|
    if (bit & (1 << i)) != 0
      sum_a += a[i]
      sum_b += b[i]
    end
  end

  result = [sum_a, result].max if sum_b <= w
end

puts result
