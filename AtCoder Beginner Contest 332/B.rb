k, g, m = gets.chomp.split.map(&:to_i)

glass = 0
mug = 0
k.times do
  if glass == g
    glass = 0
  elsif mug == 0
    mug = m
  elsif mug != 0
    dif = g - glass
    if dif <= mug
      glass += dif
      mug -= dif
    else
      glass += mug
      mug = 0
    end
  end
end

puts "#{glass} #{mug}"
