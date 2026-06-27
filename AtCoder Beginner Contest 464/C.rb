n, m = gets.chomp.split.map(&:to_i)

count = Array.new(n + 1) { 0 }
add = Array.new(m + 2) { [] }
rem = Array.new(m + 2) { [] }

n.times do
  a, d, b = gets.chomp.split.map(&:to_i)
  add[1] << a
  rem[d] << a
  add[d] << b
end

result = 0
(1..m).each do |day|
  rem[day].each do |x|
    count[x] -= 1
    result -= 1 if count[x] == 0
  end

  add[day].each do |x|
    count[x] += 1
    result += 1 if count[x] == 1
  end

  puts result
end
