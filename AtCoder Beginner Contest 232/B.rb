s = gets.chomp
t = gets.chomp
alphabet = [*'a'..'z']

a = alphabet.index(s[0])
b = alphabet.index(t[0])
diff = (a - b).abs
diff = 26 - diff if a > b

result = ''
s.chars.each do |x|
  index = (alphabet.index(x) + diff)
  index %= 26 if index >= 26
  result += alphabet[index]
end

puts result == t ? 'Yes' : 'No'
