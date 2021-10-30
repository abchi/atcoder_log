n = gets.to_i
ab = []
(n - 1).times do
  ab << gets.split.map(&:to_i)
end

hash = [*1..n].zip(Array.new(n) { [] }).to_h

ab.each do |a, b|
  hash[a] << b
  hash[b] << a
end

result = 'No'
hash.map { |k, v| v.sort!.uniq! }
hash.each do |k, v|
  result = 'Yes' if v.size == (n - 1)
end

puts result
