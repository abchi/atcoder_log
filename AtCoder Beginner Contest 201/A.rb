a = gets.split.map(&:to_i)
a.permutation(3).to_a

result = nil
a.permutation(3).to_a.each do |a1, a2, a3|
  if a3 - a2 == a2 - a1
    result = 'Yes'
    break
  else
    result = 'No'
  end
end

puts result
