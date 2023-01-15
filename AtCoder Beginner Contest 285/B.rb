n = gets.to_i
s = gets.chomp.chars

result = []
1.upto(n - 1) do |i|
  count = 0
  j = 0
  k = i
  until s[k].nil?
    a = s[j]
    b = s[k]
    break if a == b
    count += 1
    j += 1
    k += 1
  end
  result << count
end

puts result
