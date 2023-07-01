s = gets.split.map(&:to_i)

flg = true
s.each.with_index do |x, i|
  flg = false unless s[0...i].all? { |n| n <= x }
  flg = false unless (100..675).include? x
  flg = false unless x % 25 == 0
end

puts flg ? 'Yes' : 'No'
