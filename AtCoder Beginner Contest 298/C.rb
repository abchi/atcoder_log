require 'set'

n = gets.to_i
q = gets.to_i
query = []

q.times do
  query << gets.split.map(&:to_i)
end

array = Array.new(n) { Array.new }
hash = {}

query.each do |x|
  case x[0]
  when 1
    i = x[1]
    j = x[2]
    array[j - 1] << i
    hash[i] ||= Set.new
    hash[i] << j
  when 2
    puts array[x[1] - 1].sort.join ' '
  when 3
    puts hash[x[1]].sort.join ' '
  end
end
