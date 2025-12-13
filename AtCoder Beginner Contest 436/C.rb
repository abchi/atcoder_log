n, m = gets.chomp.split.map(&:to_i)
rc = []
m.times { rc << gets.chomp.split.map(&:to_i) }

u = {}
count = 0

rc.each do |r, c|
  r -= 1
  c -= 1

  next if r + 1 >= n || c + 1 >= n

  a = [
    [r, c],
    [r + 1, c],
    [r, c + 1],
    [r + 1, c + 1]
  ]

  o = false
  a.each do |cr, cc|
    if u[[cr, cc]]
      o = true
      break
    end
  end

  next if o

  a.each do |cr, cc|
    u[[cr, cc]] = true
  end

  count += 1
end

puts count
