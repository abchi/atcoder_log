require 'time'

h, m = gets.split.map(&:to_i)
now = Time.parse("#{h}:#{m}")
time = now

loop do
  h = time.strftime "%H"
  m = time.strftime "%M"
  a, b = h.chars.map(&:to_i)
  c, d = m.chars.map(&:to_i)

  raise ArgumentError if a == 2 && c == 4
  Time.parse("#{a}#{c}:#{b}#{d}")
  time >= now ? break : time += 60
rescue ArgumentError
  time += 60
end

puts time.strftime "%H %M"
