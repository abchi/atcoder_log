n = gets.to_i

class Integer
  def factorial
    (1..self).inject(1, :*)
  end
end

money = {}
(1..10).to_a.reverse.each do |x|
  money[x] = x.factorial
end

count = 0
money.each do |k, v|
  if n >= v
    count += n / v
    n %= v
  end
end

puts count
