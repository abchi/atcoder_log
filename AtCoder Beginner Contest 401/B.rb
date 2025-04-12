n = gets.to_i
s = []
n.times { s << gets.chomp }

error_count = 0
login = false

s.each do |x|
  case x
  when 'login'
    login = true
  when 'logout'
    login = false
  when 'public'
  when 'private'
      error_count += 1 unless login
  end
end

puts error_count
