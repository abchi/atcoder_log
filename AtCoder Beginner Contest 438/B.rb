n, m = gets.chomp.split.map(&:to_i)
s = gets.chomp
t = gets.chomp

result = Float::INFINITY

(n - m + 1).times do |i|
  c = 0
  m.times do |j|
    ss = s[i + j].to_i
    tt = t[j].to_i
    c += (ss - tt) % 10
  end
  result = [result, c].min
end

puts result
