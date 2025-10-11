n = gets.to_i
a = [1]

n.times do |i|
  sum = 0
  i.next.times do |j|
    digits = a[j].to_s.chars.map(&:to_i)
    digit_sum = 0
    digits.size.times { digit_sum += digits[_1] }
    sum += digit_sum
  end
  a << sum
end

puts a[n]
