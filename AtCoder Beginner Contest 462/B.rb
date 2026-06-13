n = gets.to_i
ka = []
n.times { ka << gets.chomp.split.map(&:to_i) }

array = Array.new(n) { [] }
ka.each.with_index(1) do |ka, i|
  k, *a = ka
  a.each do |x|
    array[x - 1] << i
  end
end

array.each do |x|
  puts "#{x.size} #{x.join ' '}"
end
