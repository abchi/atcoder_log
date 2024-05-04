s = gets.chomp
t = gets.chomp

result = []
s.chars.each do |x|
  result << if result.empty?
              t.index x
            else
              t.index(x, result[-1] + 1)
            end
end

puts result.map { _1 + 1 }.join ' '
