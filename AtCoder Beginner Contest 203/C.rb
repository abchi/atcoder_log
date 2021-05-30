n, k = gets.split.map(&:to_i)
ab = []
n.times do
  ab << gets.split.map(&:to_i)
end

hash = {}
ab.sort!
ab.each do |k, v|
  hash[k] = hash[k].to_i + v
end

result = 0
hash.each do |a, b|
  if (a - result) <= k
    k -= (a - result)
    k += b
    result = a
  end
end

result += k
puts result
