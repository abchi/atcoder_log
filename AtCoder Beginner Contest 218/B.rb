p = gets.split.map(&:to_i).map { |item| item - 1 }
alphabet = [*'a'..'z']

result = []
p.each do |x|
  result << alphabet[x]
end

puts result.join
