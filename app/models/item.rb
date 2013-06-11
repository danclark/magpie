class Item
  attr_reader :name
  attr_accessor :url, :price, :sale, :photos

  def initialize(attrs = {})
    @name = attrs[:name]
    @url = attrs[:url] ? attrs[:url] : nil
    @price = attrs[:price] ? attrs[:price] : 0
    @sale = attrs[:sale] ? attrs[:sale] : false
    @photos = attrs[:photos] ? attrs[:photos] : []
  end
end
