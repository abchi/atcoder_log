l, r, d, u = gets.chomp.split.map(&:to_i)

def count_range(a, b, low, high)
  x = [b, high].min - [a, low].max + 1
  x > 0 ? x : 0
end

ans = 0
max = [l.abs, r.abs, d.abs, u.abs].max
(0..max).each do |k|
  if k == 0
    ans += 1 if l <= 0 && 0 <= r && d <= 0 && 0 <= u
    next
  end

  next if k.odd?

  ans += count_range(-k, k, d, u) if l <= k && k <= r
  ans += count_range(-k, k, d, u) if l <= -k && -k <= r
  ans += count_range(-k, k, l, r) if d <= k && k <= u
  ans += count_range(-k, k, l, r) if d <= -k && -k <= u
  ans -= 1 if l <= k && k <= r && d <= k && k <= u
  ans -= 1 if l <= k && k <= r && d <= -k && -k <= u
  ans -= 1 if l <= -k && -k <= r && d <= k && k <= u
  ans -= 1 if l <= -k && -k <= r && d <= -k && -k <= u
end

puts ans
