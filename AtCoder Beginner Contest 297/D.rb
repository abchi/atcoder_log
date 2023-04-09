a, b = gets.split.map(&:to_i)

count = 0
while a != b
  if a > b
    t = a / b
    t -= 1 if a % b == 0
    t = 1 if t == 0
    a -= (b * t)
  else
    t = b / a
    t -= 1 if b % a == 0
    t = 1 if t == 0
    b -= (a * t)
  end
  count += t
end

puts count
