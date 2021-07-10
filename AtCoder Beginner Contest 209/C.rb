n = gets.to_i
c = gets.split.map(&:to_i)
mod = 10 ** 9 + 7

result = c.sort.map.with_index { |num, index| index == 0 ? num : num - index }

count = 1
result.each do |x|
  count *= x
  count %= mod
end

puts count
