n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

hash = a.zip(a).to_h

hash.each do |k, v|
  if hash[k + x]
    puts 'Yes'
    exit
  end
end

puts 'No'
