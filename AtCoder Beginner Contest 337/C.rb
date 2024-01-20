n = gets.to_i
a = gets.chomp.split.map(&:to_i)
hash = a.zip((1..n).to_a).to_h

result = []
num = -1
n.times do
  index = hash[num]
  result << index
  num = index
end

puts result.join ' '
