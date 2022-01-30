s = gets.chomp

left = s =~ /[b-z]/
right = s =~ /[b-z]a*$/
left = left.to_i
right = right.to_i

a1 = s[0...left]
a2 = s[right + 1..-1]
s2 = s[left..right]

if a1.size <= a2.size
  ans = s2 == s2.reverse ? 'Yes' : 'No'
else
  ans = 'No'
end

puts ans
