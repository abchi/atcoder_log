n = gets.to_i
a = gets.split.map(&:to_i)

size = a.size
a.uniq!
a.sort!
uniq_size = size - a.size
a << ['#'] * uniq_size
a.flatten!

comic = []
comic_number = 1

loop do
  if a[0] == comic_number
    comic << a.shift
  else
    if a.size >= 2
      a.pop
      a.pop
      comic << comic_number
    else
      a.pop
    end
  end
  break if a.empty?
  comic_number += 1
end

puts comic.size
