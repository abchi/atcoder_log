n = gets.to_i
s = gets.chomp
q = gets.to_i
tq = []
q.times do
  tq << gets.split.map(&:to_i)
end

flg = false
tq.each do |t, a, b|
  flg = !flg if t == 2
  a -= 1
  b -= 1
  if flg
    a += a < n ? n : -n
    b += b < n ? n : -n
  end
  replace_a = s[b]
  replace_b = s[a]
  s[a] = replace_a
  s[b] = replace_b
end

result = if flg
           s[n..-1] + s[0...n]
         else
           s
         end

puts result
