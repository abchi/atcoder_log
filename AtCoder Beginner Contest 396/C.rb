n, m = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)
w = gets.chomp.split.map(&:to_i)

b.sort!
w.sort!
bp = b.partition { _1 >= 0 }
wp = w.partition { _1 >= 0 }

sum = 0
size = bp[0].size
sum += bp[0].sum
size.times do
  break if wp[0].empty?
  sum += wp[0].pop
end

unless wp[0].empty?
  bp[1].reverse_each do |x|
    num = wp[0].pop
    if num >= x.abs
      sum += x
      sum += num
    else
      break
    end
  end
end

puts sum
