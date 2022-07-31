n, m = gets.split.map(&:to_i)
uv = []
m.times do
  uv << gets.split.map(&:to_i)
end

hash = (1..n).to_a.map { |i| [i, Array.new] }.to_h
uv.each do |x|
  hash[x[0]] << x[1]
end

count = 0
hash.each do |k, v|
  permutation = v.permutation(2).to_a
  permutation.each do |a, b|
    count += 1 if hash[a].include?(b) || hash[a].include?(a)
  end
end

puts count
