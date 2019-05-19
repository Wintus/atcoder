class UnionFindTree
  class Node
    attr_accessor :parent, :rank

    def initialize(n)
      @parent = n
      @rank = 0
    end
  end

  attr_reader :nodes
  private :nodes

  def initialize(n)
    @nodes = Array.new(n) { |i| Node.new(i) }
  end

  def find(x)
    if nodes[x].parent == x
      x
    else
      # shortcut
      nodes[x].parent = find(nodes[x].parent)
    end
  end

  alias root find

  # whether in the same group
  def same?(a, b)
    find(a) == find(b)
  end

  def unite(a, b)
    # parents
    a = find(a)
    b = find(b)
    return if a == b

    # shortcut
    a, b = b, a if nodes[a].rank < nodes[b].rank
    nodes[a].rank += 1 if nodes[a].rank == nodes[b].rank

    nodes[b].parent = a
  end

  alias merge unite

  def roots
    nodes.map(&:parent)
  end
end

n, m = gets.split.map(&:to_i)

uft = UnionFindTree.new(n)

m.times do
  x, y, _ = gets.split.map(&:to_i)
  uft.merge(x - 1, y - 1)
end

require 'set'
p uft.roots.to_set.size
