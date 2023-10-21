n = gets.to_i
wx = []
n.times { wx << gets.split.map(&:to_i) }

max = 0
24.times do |i|
  count = 0
  wx.each do |w, x|
    count += w if (9...18).cover?((x + i) % 24)
  end
  max = [count, max].max
end

puts max
