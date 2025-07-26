n, l, r = gets.split.map(&:to_i)
s = gets.chomp

puts s[l - 1..r - 1].chars.uniq.join == 'o' ? 'Yes' : 'No'
