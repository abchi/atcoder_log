n = gets.to_i
a = gets.chomp.split.map(&:to_i)

num = (1..n).to_a
aa = a.dup
aa.delete -1
(1..n).each do |x|
  index = aa.index x
  unless index.nil?
    aa.delete_at index
    num.delete x
  end
end

if aa.empty?
  result = []
  a.each do |x|
    if x == -1
      result << num.shift
    else
      result << x
    end
  end
  puts 'Yes'
  puts result.join ' '
else
  puts 'No'
end
