n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
s = []
n.times do
  s << gets.chomp.chars
end

player = {}
point = Array.new(n) { [] }

s.each.with_index do |x, i|
  score = 0
  x.each.with_index do |xx, j|
    if xx == 'o'
      score += a[j]
    else
      point[i] << a[j]
    end
  end
  score += i + 1
  player[i + 1] = score
end

point.map(&:sort!)
point.map(&:reverse!)
max_score = player.values.max

n.times do |i|
  count = 0
  score = player[i + 1]
  if score < max_score
    point[i].each do |x|
      count += 1
      score += x
      break if score >= max_score
    end
  end
  puts count
end
