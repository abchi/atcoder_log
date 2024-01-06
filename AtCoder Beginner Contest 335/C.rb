n, q = gets.chomp.split.map(&:to_i)
query = []
q.times { query << gets.chomp.split }
point = (1..n).to_a.zip(Array.new(n) { 0 })

query.each do |k, v|
  case k
  when '1'
    first_point = point[0].dup
    point.pop
    case v
    when 'R'
      first_point[0] += 1
    when 'L'
      first_point[0] -= 1
    when 'U'
      first_point[1] += 1
    when 'D'
      first_point[1] -= 1
    end
    point.unshift first_point
  when '2'
    puts point[v.to_i - 1].join ' '
  end
end
