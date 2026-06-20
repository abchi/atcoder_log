n, x = gets.chomp.split
n = n.to_i
s = []
n.times { s << gets.chomp.chars }
s = s.transpose

index = case x
        when 'A'
          0
        when 'B'
          1
        when 'C'
          2
        when 'D'
          3
        when 'E'
          4
        end

puts s[index].any? { _1 == 'o' } ? 'Yes' : 'No'
