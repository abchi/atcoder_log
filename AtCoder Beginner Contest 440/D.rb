n, q = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
a.sort!
a << Float::INFINITY

g = Array.new(n + 1) { 0 }
n.times { g[_1 + 1] = g[_1] + (a[_1 + 1] - a[_1] - 1) }

q.times do
  x, y = gets.chomp.split.map(&:to_i)

  index = a.bsearch_index { _1 >= x }
  num = a[index] - x

  if y <= num
    puts x + y - 1
    next
  end

  y -= num
  t = g[index] + y
  j = g.bsearch_index { _1 >= t }

  puts a[j - 1] + (t - g[j - 1])
end
