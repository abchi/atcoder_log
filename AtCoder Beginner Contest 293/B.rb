n = gets.to_i
a = gets.split.map(&:to_i)
n = (1..n).to_a

a.each do |i|
  unless i.nil?
    a[i - 1] = nil
    n[i - 1] = nil
  end
end

n.compact!

puts n.size
puts n.join ' '
