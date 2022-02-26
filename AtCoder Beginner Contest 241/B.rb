n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

result = 'Yes'
b.each do |x|
  index = a.index(x)
  if index
    a.delete_at(index)
  else
    result = 'No'
  end
end

puts result
