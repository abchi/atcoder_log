require 'prime'

s = gets.chomp

id = {}
pattern = []
s.each_char do |c|
  id[c] = id.size unless id.key? c
  pattern << id[c]
end

k = id.size
(0..9).to_a.permutation(k) do |d|
  next if d[pattern[0]] == 0

  num = 0
  pattern.each { num = num * 10 + d[_1] }

  if Prime.prime? num
    puts num
    exit
  end
end

puts -1
