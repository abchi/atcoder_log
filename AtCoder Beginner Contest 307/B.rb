n = gets.to_i
s = []
n.times do
  s << gets.chomp
end

result = s.permutation(2).to_a.map(&:join).find { |x| x == x.reverse }

puts result.nil? ? 'No' : 'Yes'
