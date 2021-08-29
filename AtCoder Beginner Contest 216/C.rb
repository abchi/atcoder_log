n = gets.to_i
x = n

ans = []
while x > 0
  if x.odd?
    ans << 'A'
    x -= 1
  else
    ans << 'B'
    x /= 2
  end
end

puts ans.reverse.join
