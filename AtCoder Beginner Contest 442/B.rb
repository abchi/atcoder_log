q = gets.to_i
a = []
q.times { a << gets.to_i }

v = 0
play = false
a.each do |x|
  case x
  when 1
    v += 1
  when 2
    v -= 1 if v >= 1
  when 3
    play = !play
  end
  puts (play && v >= 3) ? 'Yes' : 'No'
end
