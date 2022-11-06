n = gets.to_i
p = gets.split.map(&:to_i)

class Array
  def prev_permutation!
    return nil if self.empty?

    prev = self.last
    i = self.rindex { |ai| ai > prev || (prev = ai; false) }

    unless i
      self.reverse!
      return nil
    end

    key = self[i]
    j = self.rindex { |aj| aj < key }
    self[i], self[j] = self[j], self[i]
    self[i + 1..-1] = self[i + 1..-1].reverse!
    return self
  end
end

puts p.prev_permutation!.join(' ')
