h, w = gets.chomp.split.map(&:to_i)
s = []
h.times { s << gets.chomp }

warp = Array.new(26) { [] }
h.times do |i|
  row = s[i]
  w.times do |j|
    c = row.getbyte(j)
    if c >= 97 && c <= 122
      warp[c - 97] << (i * w + j)
    end
  end
end

dist = Array.new(h * w) { -1 }
dist[0] = 0
q = [0]
pos = 0

while pos < q.size
  v = q[pos]
  pos += 1
  r = v / w
  c = v % w
  d = dist[v]

  if v == h * w - 1
    puts d
    exit
  end

  if r > 0
    nv = v - w
    if dist[nv] == -1 && s[r - 1].getbyte(c) != 35
      dist[nv] = d + 1
      q << nv
    end
  end

  if r + 1 < h
    nv = v + w
    if dist[nv] == -1 && s[r + 1].getbyte(c) != 35
      dist[nv] = d + 1
      q << nv
    end
  end

  if c > 0
    nv = v - 1
    if dist[nv] == -1 && s[r].getbyte(c - 1) != 35
      dist[nv] = d + 1
      q << nv
    end
  end

  if c + 1 < w
    nv = v + 1
    if dist[nv] == -1 && s[r].getbyte(c + 1) != 35
      dist[nv] = d + 1
      q << nv
    end
  end

  c0 = s[r].getbyte(c)
  if c0 >= 97 && c0 <= 122
    index = c0 - 97
    warp[index].each do |x|
      if dist[x] == -1
        dist[x] = d + 1
        q << x
      end
    end
    warp[index].clear
  end
end

puts -1
