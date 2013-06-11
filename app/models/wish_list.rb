class WishList
  attr_reader :name
  attr_accessor :items

  def initialize(name, items=[])
    @name = name
    @items = items
  end

  def size
    items.count
  end

  def add(item)
    items << item
  end

  def top(count)
    items[0...count]
  end
end
