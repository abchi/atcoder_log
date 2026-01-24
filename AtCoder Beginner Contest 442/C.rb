n, m = gets.chomp.split.map(&:to_i)
ab = []
m.times { ab << gets.chomp.split.map(&:to_i) }

hash = Hash.new(0)
ab.each do |a, b|
  hash[a] += 1
  hash[b] += 1
end

result = []
1.upto(n) do |i|
  c = n - 1 - hash[i]
  result << if c < 3
              0
            else
              c * (c - 1) * (c - 2) / 6
            end
end

puts result.join ' '
