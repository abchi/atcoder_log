n, q = gets.chomp.split.map(&:to_i)
query = []
q.times { query << gets.chomp.split.map(&:to_i) }

array = (1..n).to_a
offset = 0

query.each do |a, b, c|
  case a
  when 1
    array[(b - 1 - offset) % n] = c
  when 2
    p array[(b - 1 - offset) % n]
  when 3
    offset = (offset - b) % n
  end
end