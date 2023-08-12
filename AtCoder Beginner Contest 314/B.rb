n = gets.to_i
c = []
a = []
n.times do |i|
  c << gets.to_i
  a << [i + 1, gets.split.map(&:to_i)]
end
x = gets.to_i

target = a.select { |k, v| v.include? x }
hash = target.map { |k, v| [k, v.size] }.to_h
min = hash.values.min
result = hash.select { |k, v| v == min }
keys = result.sort_by { |k, v| k }.to_h.keys

puts keys.size
puts keys.join ' '
