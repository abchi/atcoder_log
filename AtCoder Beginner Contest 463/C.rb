n = gets.to_i
hl = []
n.times { hl << gets.chomp.split.map(&:to_i) }
q = gets.to_i
t = gets.chomp.split.map(&:to_i).map { _1 + 1 }

hl.sort_by! { |h, l| -l }
ti = t.each.with_index.sort_by { |t, i| -t }

a = []
result = Array.new q
index = 0

ti.each do |t, i|
  while index < n && hl[index][1] >= t
    x = hl[index][0]
    a << x
    j = a.size - 1
    while j > 0
      p = (j - 1) / 2
      break if a[p] >= a[j]
      a[p], a[j] = a[j], a[p]
      j = p
    end
    index += 1
  end
  result[i] = a[0]
end

puts result