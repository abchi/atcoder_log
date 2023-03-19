n, q = gets.split.map(&:to_i)
member = (1..n).to_a
event = []
q.times do
  event << gets.split.map(&:to_i)
end

call = {}
event.each do |e, x|
  case e
  when 1
    call[member.shift] = nil
  when 2
    call.delete x
  when 3
    puts call.first[0]
  end
end
