n = gets.to_i
a = gets.split.map(&:to_i)

hash = [*1..n].zip(a).to_h
puts hash.sort_by { |_, v| v }[-2][0]
