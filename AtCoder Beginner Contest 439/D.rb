n = gets.to_i
a = gets.chomp.split.map(&:to_i)

pos = Hash.new { |h, k| h[k] = [] }
a.each_with_index { |v, i| pos[v] << i }

ans = 0
a.each_with_index do |aj, j|
  next unless aj % 5 == 0

  t = aj / 5
  ai = 7 * t
  ak = 3 * t

  next unless pos[ai] && pos[ak]

  a7 = pos[ai]
  a3 = pos[ak]

  l7 = a7.bsearch_index { _1 >= j } || a7.size
  l3 = a3.bsearch_index { _1 >= j } || a3.size

  r7 = a7.size - l7
  r3 = a3.size - l3

  ans += l7 * l3 + r7 * r3
end

puts ans
