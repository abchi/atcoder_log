n = gets.to_i
a = []
b = []

n.times do
  a << gets.split.map(&:to_i)
end
n.times do
  b << gets.split.map(&:to_i)
end

def check_value(a, b)
  a.each.with_index do |x, i|
    xx = x.join.to_i(2)
    bb = b[i].join.to_i(2)
    unless (xx & bb) == xx
      return false
    end
  end
  true
end

result = []
result << check_value(a, b)

a = a.reverse.transpose
result << check_value(a, b)
a = a.reverse.transpose
result << check_value(a, b)
a = a.reverse.transpose
result << check_value(a, b)

puts result.include?(true) ? 'Yes' : 'No'
