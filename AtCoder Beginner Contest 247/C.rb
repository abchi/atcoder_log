n = gets.to_i

s = [[1]]
2.upto(n) do |i|
  array = s[i - 2]
  s << [array, [i], array].flatten
end

puts s[n - 1].join(' ')
