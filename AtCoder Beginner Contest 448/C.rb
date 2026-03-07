n, q = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

s = a.each.with_index.map { |v, i| [v, i + 1] }
s.sort_by! { |v, i| v }

q.times do
  k = gets.to_i
  r = gets.chomp.split.map(&:to_i).to_set

  s.each do |v, i|
    unless r.include? i
      puts v
      break
    end
  end
end
