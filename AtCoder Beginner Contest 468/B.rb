m, d = gets.chomp.split.map(&:to_i)
s = gets.chomp.chars

count = 0
m.times do |i|
  g = false

  m.times do |j|
    if s[j] == 'G' && (i - j).abs <= d
      g = true
      break
    end
  end

  count += 1 unless g
end

puts count
