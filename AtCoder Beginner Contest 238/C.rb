n = gets.to_i

answer = n * (n + 1) / 2

1.upto(18) do |i|
  if n >= 10 ** i
    answer -= 9 * 10 ** (i - 1) * (n - ('9' * i).to_i)
  end
end

puts answer % 998244353
