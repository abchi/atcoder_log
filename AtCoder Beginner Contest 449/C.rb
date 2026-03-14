n, l, r = gets.chomp.split.map(&:to_i)
s = gets.chomp

pos = Array.new(26) { [] }
s.chars.each_with_index do |c, i|
  pos[c.ord - 97] << i
end

ans = 0
pos.each do |a|
  m = a.size
  next if m <= 1

  (0...m).each do |t|
    x = a[t]
    low = x - r
    high = x - l
    next if low > high

    left = 0
    right = t
    while left < right
      mid = (left + right) / 2
      if a[mid] < low
        left = mid + 1
      else
        right = mid
      end
    end
    lpos = left

    left = 0
    right = t
    while left < right
      mid = (left + right) / 2
      if a[mid] <= high
        left = mid + 1
      else
        right = mid
      end
    end
    rpos = left

    ans += rpos - lpos
  end
end

puts ans
