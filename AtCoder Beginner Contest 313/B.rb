n, m = gets.split.map(&:to_i)
ab = []
m.times do
  ab << gets.split.map(&:to_i)
end

members = (1..n).zip(Array.new(n) { [] }).to_h

ab.each do |a, b|
  members[a] << b
end

loop do
  before = members.dup
  members.each do |k, v|
    v.each do |x|
      members[k] |= members[x]
    end
  end
  break if members == before
end

result = members.select { |k, v| v.size == n - 1 }

puts result.empty? ? -1 : result.keys
