h, w, n = gets.split.map(&:to_i)
a, b = [], []

n.times do |i|
  a[i], b[i] = gets.split.map(&:to_i)
end

hash_a = a.sort.uniq.each.with_index(1).to_h
hash_b = b.sort.uniq.each.with_index(1).to_h

n.times do |i|
  puts "#{hash_a[a[i]]} #{hash_b[b[i]]}"
end
