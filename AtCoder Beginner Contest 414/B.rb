n = gets.to_i
cl = []
n.times { cl << gets.chomp.split }

s = ''
size = 0
cl.each do |c, l|
  size += l.to_i
  if size > 100
    puts 'Too Long'
    exit
  end

  s += c * l.to_i
end

puts s
