q = gets.to_i
query = []
q.times { query << gets.chomp.split.map(&:to_i) }

deck = Array.new(100) { 0 }
query.each do |c, x|
  case c
  when 1
    deck.unshift x
  when 2
    puts deck.shift
  end
end
