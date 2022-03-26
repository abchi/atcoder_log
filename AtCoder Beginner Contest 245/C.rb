n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

ab = [a, b].transpose

(n - 1).times do |i|
  x = ab[i]
  s = []
  x.each do |n|
    s << ab[i + 1]&.select { |item| (n - item).abs <= k }
  end
  ab[i + 1] = s.flatten.uniq.compact
end

puts ab.count { |x| !x.empty? } == n ? 'Yes' : 'No'
