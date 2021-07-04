require 'bigdecimal'

n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

min_count = (BigDecimal(k) / BigDecimal(n)).floor
remainder = (BigDecimal(k) % BigDecimal(n)).to_i
max_number = a.sort[remainder]

a.each do |x|
  result = if x < max_number
             min_count + 1
           else
             min_count
           end
  puts result
end
