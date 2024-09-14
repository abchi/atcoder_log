n, m = gets.chomp.split.map(&:to_i)
ab = []
m.times do
  line = gets.chomp.split
  ab << [line[0].to_i, line[1]]
end
house = (1..n).to_a.zip(Array.new(n) { false }).to_h

ab.each do |a, b|
  if b == 'M'
    unless house[a]
      puts 'Yes'
      house[a] = true
    else
      puts 'No'
    end
  else
    puts 'No'
  end
end
