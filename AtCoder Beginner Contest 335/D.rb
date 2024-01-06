n = gets.to_i

array = []
result = [['T']]
1.upto(n * n - 1) do |x|
  array << x
  if result[0].size == array.size
    result.unshift array.dup
    result = result.transpose
    result.reverse!
    array = []
  end
end

result.each { |r| puts r.join ' ' }
