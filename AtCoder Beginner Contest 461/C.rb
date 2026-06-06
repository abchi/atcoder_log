n, k, m = gets.chomp.split.map(&:to_i)
cv = []
n.times { cv << gets.chomp.split.map(&:to_i) }

cv.sort_by! { |c, v| -v }
chosen = cv[0, k]
rest = cv[k..] || []
sum = 0
count = Hash.new 0
rem = []

chosen.each do |c, v|
  sum += v
  count[c] += 1
  rem << v if count[c] >= 2
end
rem.sort!

d = count.size
if d < m
  rest.each do |c, v|
    next if count[c] > 0
    sum += v - rem.shift
    count[c] = 1
    d += 1
    break if d >= m
  end
end

puts sum
