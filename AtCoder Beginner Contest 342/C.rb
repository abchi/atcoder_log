n = gets.to_i
s = gets.chomp
q = gets.to_i
cd = []
q.times { cd << gets.chomp.split }

alphabet = ('a'..'z').to_a
conversion_table = alphabet.join
cd.each do |c, d|
  conversion_table.tr! c, d
end

result = ''
s.chars.each do |x|
  result << conversion_table[(alphabet.index(x))]
end

puts result
