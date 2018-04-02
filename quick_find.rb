# Quick Find
class QuickFind
  attr_reader :box
  def initialize(count: 10)
    @box = []
    count.times { |i| @box[i] = i }
  end

  def find(id)
    @box[id]
  end

  def connected?(a, b)
    @box[a] == @box[b]
  end

  def union(a, b)
    found_a = find(a)
    found_b = find(b)
    return if found_a == found_b
    (@box.length - 1).times do |i|
      @box[i] = found_b if @box[i] == found_a
    end
  end
end

a = QuickFind.new
a.union(5, s2)
puts a.connected?(5, 2)
