n = gets.to_i
a = gets.chomp.split.map(&:to_i)

result = []
num = a[0]
a[1..].each do |x|
  result << (Rational x, num)
  num = x
end

puts result.all? { _1 == result[0] } ? 'Yes' : 'No'
