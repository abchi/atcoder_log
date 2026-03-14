h, w, q = gets.chomp.split.map(&:to_i)
query = []
q.times { query << gets.chomp.split.map(&:to_i) }

query.each do |a, b|
  case a
  when 1
    puts w * b
    h -= b
  when 2
    puts h * b
    w -= b
  end
end
