a, b, c, d = gets.split.map(&:to_i)

blue = a
red = 0

count = -1
1.upto(a) do |i|
  blue += b
  red += c
  if blue <= red * d
    count = i
    break
  end
end

puts count
