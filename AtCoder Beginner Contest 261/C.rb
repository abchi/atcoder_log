n = gets.to_i
s = []
count = {}

n.times do
  line = gets.chomp
  if count[line].nil?
    count[line] = 1
    s << line
  else
    s << "#{line}(#{count[line]})"
    count[line] += 1
  end
end

puts s
