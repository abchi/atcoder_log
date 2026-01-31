n, t = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

result = 0
open = true
s = 0
r = nil
i = 0
time = 0

while time < t
  if open
    if i < n
      x = a[i]

      if x > t
        result += t - s
        break
      end

      result += x - s
      open = false
      r = x + 100
      time = x
      i += 1
    else
      result += t - s
      break
    end
  else
    while i < n && a[i] < r
      i += 1
    end

    break if r >= t

    time = r
    open = true
    s = time
    r = nil
  end
end

puts result
