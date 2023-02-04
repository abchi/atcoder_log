n, m = gets.split.map(&:to_i)
ab = []
m.times do
  ab << gets.split.map(&:to_i).sort
end

class UnionFind
  attr_accessor :parent, :count

  def initialize(size)
    @count = 0
    @parent = Array.new(size, -1)
  end

  def root(x)
    if @parent[x] < 0
      x
    else
      @parent[x] = root(@parent[x])
    end
  end

  def same_parent?(x, y)
    root(x) == root(y)
  end

  def merge(x, y)
    x_root = root(x)
    y_root = root(y)

    if x_root == y_root
      @count += 1
      return false
    end

    if @parent[x_root] > @parent[y_root]
      x_root, y_root = y_root, x_root
    end

    @parent[x_root] += @parent[y_root]
    @parent[y_root] = x_root

    return true
  end

  def size(x)
    return -@parent[root(x)]
  end
end

uf = UnionFind.new n
ab.each do |a, b|
  uf.merge a - 1, b - 1
end

puts uf.count
