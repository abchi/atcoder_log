n, d = gets.split.map(&:to_i)
s = []
n.times do
  s << gets.chomp.chars
end

count = 0
max_count = 0
s.transpose.each do |x|
  if x.all? { |item| item == 'o' }
    count += 1
    max_count = [count, max_count].max
  else
    count = 0
  end
end

puts max_count
