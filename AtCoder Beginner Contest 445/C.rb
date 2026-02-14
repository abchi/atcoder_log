n = gets.to_i
a = [0] + gets.chomp.split.map(&:to_i)
k = "1#{'0' * 100}"

cl = Array.new(n + 1) { 0 }
ds = Array.new(n + 1) { 0 }
rt = Array.new(n + 1) { 0 }
st = Array.new(n + 1) { 0 }
stc = []

1.upto(n) do |s|
  next if st[s] != 0
  v = s

  while st[v] == 0
    st[v] = 1
    stc << v
    v = a[v]
  end

  if st[v] == 1
    i = stc.index v
    cy = stc[i..]
    cy.each do |x|
      cl[x] = cy.size
      ds[x] = 0
      rt[x] = x
    end
    stc = stc[0...i]
  end

  stc.reverse_each do |x|
    cl[x] = cl[a[x]]
    ds[x] = ds[a[x]] + 1
    rt[x] = rt[a[x]]
  end

  stc.each { st[_1] = 2 }
  stc.clear
end

result = []
1.upto(n) do |s|
  v = rt[s]
  r = 0
  k.each_byte { r = (r * 10 + _1 - 48) % cl[v] }
  r.times { v = a[v] }

  result << v
end

puts result.join ' '
