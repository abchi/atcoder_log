x1, y1, x2, y2 = gets.split.map(&:to_i)
moves = [[1, 2], [2, 1], [-1, 2], [-2, 1], [1, -2], [2, -1], [-1, -2], [-2, -1]]

moves.each do |a1, b1|
  moves.each do |a2, b2|
    if x1 + a1 + a2 == x2 && y1 + b1 + b2 == y2
      puts 'Yes'
      exit
    end
  end
end

puts 'No'
