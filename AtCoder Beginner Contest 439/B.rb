n = gets.to_i

result = Set.new
num = n
while num != 1 do
  num = num.to_s.chars.map { _1.to_i ** 2 }.sum
  if result.include? num
    puts 'No'
    exit
  end
  result << num
end

puts 'Yes'
