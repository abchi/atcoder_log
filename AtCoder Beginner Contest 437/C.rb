def heap_push(h, x)
  i = h.size
  h << x
  while i > 0
    p = (i - 1) / 2
    break if h[p] >= h[i]
    h[p], h[i] = h[i], h[p]
    i = p
  end
end

def heap_pop(h)
  return nil if h.empty?
  top = h[0]
  x = h.pop
  unless h.empty?
    h[0] = x
    i = 0
    while (l = i * 2 + 1) < h.size
      r = l + 1
      c = (r < h.size && h[r] > h[l]) ? r : l
      break if h[i] >= h[c]
      h[i], h[c] = h[c], h[i]
      i = c
    end
  end
  top
end

t = gets.to_i
t.times do
  n = gets.to_i
  a = []
  s = 0

  n.times do
    w, p = gets.chomp.split.map(&:to_i)
    a << w + p
    s += p
  end

  a.sort!
  h = []
  sum = 0

  a.each do |v|
    heap_push(h, v)
    sum += v
    if sum > s
      sum -= heap_pop(h)
    end
  end

  puts h.size
end
