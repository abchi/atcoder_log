n = gets.to_i

100.times do |x|
  100.times do |y|
    result = 2 ** x * 3 ** y
    if result == n
      puts 'Yes'
      exit
    end
  end
end

puts 'No'
