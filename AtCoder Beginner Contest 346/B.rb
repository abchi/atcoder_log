w, b = gets.split.map(&:to_i)
s = 'wbwbwwbwbwbw'

times = ((w + b).to_r / s.size).ceil + 1

puts (s * times).chars.each_cons(w + b).to_a.any? { _1.count('w') == w && _1.count('b') == b } ? 'Yes' : 'No'
