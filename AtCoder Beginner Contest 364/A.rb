n = gets.to_i
s = []
n.times { s << gets.chomp }

status = true
previous = nil
count = 0
s.each.with_index(1) do |x, i|
  break unless status
  case x
  when 'sweet'
    status = false if x == previous
    previous = x
  when 'salty'
    previous = x
  end
  count = i
end

puts count == n ? 'Yes' : 'No'
