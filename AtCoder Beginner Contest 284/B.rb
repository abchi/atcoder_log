t = gets.to_i
n = []
a = []
t.times do
  n << gets.to_i
  a << gets.split.map(&:to_i)
end

a.each do |aa|
  puts aa.count { |x| x.odd? }
end
