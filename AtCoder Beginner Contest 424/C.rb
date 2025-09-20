n = gets.to_i
ab = []
n.times { ab << gets.chomp.split.map(&:to_i) }

l = Array.new(n + 1) { false }
q = []

(1..n).each do |i|
  a, b = ab[i - 1]
  if a == 0 && b == 0
    l[i] = true
    q << i
  end
end

unlock = Hash.new { |h, k| h[k] = [] }
(1..n).each do |i|
  a, b = ab[i - 1]
  next if a == 0 && b == 0
  unlock[a] << i
  unlock[b] << i
end

until q.empty?
  c = q.shift
  unlock[c].each do |ns|
    next if l[ns]
    a, b = ab[ns - 1]
    if l[a] || l[b]
      l[ns] = true
      q << ns
    end
  end
end

puts l[1..].count(true)
