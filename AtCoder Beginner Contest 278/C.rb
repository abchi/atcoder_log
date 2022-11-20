n, q = gets.split.map(&:to_i)
tab = []
q.times do
  tab << gets.split.map(&:to_i)
end

user = {}
tab.each do |t, a, b|
  user[a] ||= []
  case t
  when 1
    user[[a, b]] = true
  when 2
    user[[a, b]] = false
  when 3
    puts user[[a, b]] && user[[b, a]] ? 'Yes' : 'No'
  end
end
