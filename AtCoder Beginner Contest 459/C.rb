n, q = gets.chomp.split.map(&:to_i)
query = []
q.times { query << gets.chomp.split.map(&:to_i) }

def bit_add(bit, i, x)
  n = bit.size - 1
  while i <= n
    bit[i] += x
    i += i & -i
  end
end

def bit_sum(bit, i)
  s = 0
  while i > 0
    s += bit[i]
    i -= i & -i
  end
  s
end

def bit_range(bit, l, r)
  return 0 if l > r
  bit_sum(bit, r) - bit_sum(bit, l - 1)
end

a = Array.new(n) { 0 }
d = 0
m = q + 5
bit = Array.new(m + 1) { 0 }
bit_add(bit, 1, n)

query.each do |k, v|
  case k
  when 1
    x = v - 1
    old = a[x]
    new = old + 1
    a[x] = new
    bit_add(bit, old + 1, -1)
    bit_add(bit, new + 1, 1)

    l = d + 2
    d += 1 if l <= m && bit_range(bit, d + 2, m) == n
  when 2
    puts bit_range(bit, d + v + 1, m)
  end
end
