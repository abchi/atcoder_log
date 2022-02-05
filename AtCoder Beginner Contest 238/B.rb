n = gets.to_i
a = gets.split.map(&:to_i)

circle = (1..360).to_a.zip([0] * 360 ).to_h

angle = 0
a.each do |x|
  angle += x
  angle -= 360 if angle > 360
  circle[angle] = 1
end

result = []
circle.each do |k, v|
  result << k if v == 1
end

result.prepend(0)
result.push(360)

max = 0
result.each_cons(2).each do |x|
  max = [x.inject(:-).abs, max].max
end

puts max
