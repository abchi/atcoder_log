n, m = gets.split.map(&:to_i)
n2 = n * 2
rank = [*1..n2].zip([0] * n2).to_h
a = []
n2.times do
  a << gets.chomp.chars
end

m.times do |i|
  rank = rank.sort_by { |k, v| [-v, k] }.to_h
  rank.each_slice(2).each do |x, y|
    x_hand = a[x[0] - 1][i]
    y_hand = a[y[0] - 1][i]
    result = case x_hand
             when 'G'
               case y_hand
               when 'G'
                 'draw'
               when 'C'
                 'x'
               when 'P'
                 'y'
               end
             when 'C'
               case y_hand
               when 'G'
                 'y'
               when 'C'
                 'draw'
               when 'P'
                 'x'
               end
             when 'P'
               case y_hand
               when 'G'
                 'x'
               when 'C'
                 'y'
               when 'P'
                 'draw'
               end
             end

    if result == 'x'
      rank[x[0]] += 1
    elsif result == 'y'
      rank[y[0]] += 1
    end
  end
end

puts rank.sort_by { |k, v| [-v, k] }.to_h.keys
