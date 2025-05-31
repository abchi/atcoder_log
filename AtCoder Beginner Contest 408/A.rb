n, s = gets.chomp.split.map(&:to_i)
t = gets.chomp.split.map(&:to_i)

before = 0
t.each do |x|
  if x - before >= (s + 0.5)
    puts 'No'
    exit
  end
  before = x
end

puts 'Yes'
