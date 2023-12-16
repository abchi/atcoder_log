n = gets.to_i

array = []
1.upto(12) do |i|
  1.upto(12) do |j|
    1.upto(12) do |k|
      array << ('1' * i).to_i + ('1' * j).to_i + ('1' * k).to_i
    end
  end
end

array.uniq!
array.sort!

puts array[n - 1]
