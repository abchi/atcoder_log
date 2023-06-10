h, w = gets.split.map(&:to_i)
s = []
h_max = 0
w_max = 0

h.times do
  line = gets.chomp.chars
  w_max = [line.count('#'), w_max].max
  s << line
end

s.transpose.each do |x|
  h_max = [x.count('#'), h_max].max
end

s.each.with_index do |x, i|
  if x.count('#') == w_max - 1
    s.transpose.each.with_index do |x, j|
      puts "#{i + 1} #{j + 1}" if x.count('#') == h_max - 1
    end
  end
end
