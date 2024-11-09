q = gets.to_i
query = []
q.times { query << gets.chomp.split.map(&:to_i) }

pot = []
query.each do |a, b|
  case a
  when 1
    pot << 0
  when 2
    pot.map! { _1 + b }
  when 3
    puts pot.size - pot.delete_if { _1 >= b }.size
  end
end
