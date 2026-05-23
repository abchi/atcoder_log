n = gets.to_i
s = gets.chomp.split

result = []
s.each do |x|
  num = case x[0]
        when 'a', 'b', 'c'
          '2'
        when 'd', 'e', 'f'
          '3'
        when 'g', 'h', 'i'
          '4'
        when 'j', 'k', 'l'
          '5'
        when 'm', 'n', 'o'
          '6'
        when 'p', 'q', 'r', 's'
          '7'
        when 't', 'u', 'v'
          '8'
        when 'w', 'x', 'y', 'z'
          '9'
        end

  result << num
end

puts result.join
