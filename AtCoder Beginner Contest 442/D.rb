n, q = gets.chomp.split.map(&:to_i)
a = [0] + gets.chomp.split.map(&:to_i)
query = []
q.times { query << gets.chomp.split.map(&:to_i) }

def add(b, n, i, v)
  while i <= n
    b[i] += v
    i += i & -i
  end
end

def sum(b, i)
  s = 0
  while i > 0
    s += b[i]
    i -= i & -i
  end
  s
end

b = Array.new(n + 1) { 0 }
(1..n).each { add(b, n, _1, a[_1]) }

query.each do |i, x, y|
  case i
  when 1
    a[x], a[x + 1] = a[x + 1], a[x]
    add(b, n, x, a[x] - a[x + 1])
    add(b, n, x + 1, a[x + 1] - a[x])
  when 2
    puts sum(b, y) - sum(b, x - 1)
  end
end
