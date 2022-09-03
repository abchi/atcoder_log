s = gets.chomp.chars

result = 'No'
if s[0] == '0'
  check1 = false
  check2 = false
  pins = [[7], [4], [2, 8], [5], [3, 9], [6], [10]]
  pins.each do |pin|
    if check1 && !check2
      check2 = true if pin.all? { |v| s[v - 1] == '0' }
    elsif check1 && check2
      result = 'Yes' if pin.any? { |v| s[v - 1] == '1' }
    elsif !check1
      check1 = true if pin.any? { |v| s[v - 1] == '1' }
    end
  end
end

puts result
