a = gets.to_i
n = gets.to_i

sum = 0

def palindrome_digits?(x, base)
  digits = []
  while x > 0
    digits << (base == 2 ? x & 1 : x % base)
    x = (base == 2 ? x >> 1 : x / base)
  end
  i = 0
  while i < digits.size / 2
    return false if digits[i] != digits[-1 - i]
    i += 1
  end
  true
end

half = 1
while true
  s = half.to_s
  x = (s + s.reverse).to_i
  break if x > n
  sum += x if palindrome_digits?(x, a)
  half += 1
end

half = 1
while true
  s = half.to_s
  x = (s + s[0...-1].reverse).to_i
  break if x > n
  sum += x if palindrome_digits?(x, a)
  half += 1
end

puts sum
