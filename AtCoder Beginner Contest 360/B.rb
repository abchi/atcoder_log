s, t = gets.chomp.split

included = false
1.upto(s.size) do |c|
  1.upto(s.size) do |w|
    break unless 1 <= c && c <= w && w < s.size
    array = s.chars.each_slice(w).to_a
    array = array.dup.each do |a|
      while a.size < w
        a << nil
      end
    end
    included = true if array.transpose.map(&:join).include? t
  end
end

puts included ? 'Yes' : 'No'
