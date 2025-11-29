t = gets.to_i
nh = []
tlu = []

t.times do
  nh << gets.chomp.split.map(&:to_i)
  nh[-1][0].times do
    tlu << gets.chomp.split.map(&:to_i)
  end
end

nh.each do |n, h|
  a = []
  n.times { a << tlu.shift }
  a.sort_by! { _1[0] }

  pt = 0
  lo = h
  hi = h
  ok = true

  a.each do |tt, l, u|
    d = tt - pt
    lo = [0, lo - d].max
    hi = hi + d
    lo = [lo, l].max
    hi = [hi, u].min
    if lo > hi
      ok = false
      break
    end
    pt = tt
  end

  puts ok ? 'Yes' : 'No'
end
