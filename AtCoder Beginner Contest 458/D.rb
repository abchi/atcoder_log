def push(h, v)
  h << v
  i = h.size - 1
  while i > 0
    p = (i - 1) / 2
    break if h[p] <= h[i]
    h[p], h[i] = h[i], h[p]
    i = p
  end
end

def pop(h)
  v = h[0]
  x = h.pop
  unless h.empty?
    h[0] = x
    i = 0
    while (l = i * 2 + 1) < h.size
      r = l + 1
      c = r < h.size && h[r] < h[l] ? r : l
      break if h[i] <= h[c]
      h[i], h[c] = h[c], h[i]
      i = c
    end
  end
  v
end

x = gets.to_i
q = gets.to_i
ab = []
q.times { ab << gets.chomp.split.map(&:to_i) }

l = []
r = []
push(l, -x)
ab.each do |a, b|
  [a, b].each do |v|
    v <= -l[0] ? push(l, -v) : push(r, v)

    if l.size < r.size + 1
      push(l, -pop(r))
    elsif l.size > r.size + 1
      push(r, -pop(l))
    end
  end

  puts -l[0]
end
