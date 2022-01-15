n = gets.to_i
h = gets.split.map(&:to_i)

ans = 0
h.each do |x|
  if ans < x
    ans = x
  else
    break
  end
end

puts ans
