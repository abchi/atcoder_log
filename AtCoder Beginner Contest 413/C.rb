q = gets.to_i
query = []
q.times { query << gets.chomp.split.map(&:to_i) }

list = []
query.each do |a, b, c|
  case a
  when 1
    if list[-1]&.[](0) == c
      list[-1][1] += b
    else
      list << [c, b]
    end
  when 2
    sum = 0
    while b > 0
      value, count = list[0]
      if count <= b
        sum += value * count
        list.shift
        b -= count
      else
        sum += value * b
        list[0][1] -= b
        b = 0
      end
    end
    puts sum
  end
end
