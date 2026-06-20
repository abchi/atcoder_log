n, k = gets.chomp.split.map(&:to_i)
lr = []
n.times { lr << gets.chomp.split.map(&:to_i) }

lr = lr.sort_by { |l, r| r }

def check?(lr, k, d)
  count = 1
  last = lr[0][1]
  lr[1..].each do |l, r|
    if l > last && l - last >= d
      count += 1
      last = r
      return true if count >= k
    end
  end
  false
end

l, r = 0, 10 ** 10
while r - l > 1
  m = (l + r) / 2
  check?(lr, k, m) ? l = m : r = m
end

puts check?(lr, k, 0) ? l : -1
