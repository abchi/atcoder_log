n, q = gets.split.map(&:to_i)
event = []
q.times do
  event << gets.split.map(&:to_i)
end

members = Array.new(n) { 0 }

event.each do |n, x|
  case n
  when 1
    members[x - 1] += 1
  when 2
    members[x - 1] += 2
  when 3
    puts members[x - 1] >= 2 ? 'Yes' : 'No'
  end
end
