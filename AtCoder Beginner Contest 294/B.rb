h, w = gets.split.map(&:to_i)
a = []
alphabet = ('A'..'Z').to_a

h.times do
  a << gets.split.map(&:to_i)
end

result = []
a.each do |aa|
  array = []
  aa.each do |x|
    array << if x == 0
                '.'
              else
                alphabet[x - 1]
              end
  end
  result << array.join
end

puts result
