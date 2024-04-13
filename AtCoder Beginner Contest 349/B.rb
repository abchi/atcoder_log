s = gets.chomp

table = Hash.new(0)
s.scan(/./) { |m| table[m] += 1 }
result = []
table.values.uniq.sort.each do |x|
  result << table.find_all { |k, v| v == x }.size
end

puts result.all? { _1 == 2 } ? 'Yes' : 'No'
