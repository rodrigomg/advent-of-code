class Item

  attr_reader :price, :quantity

  def initialize(dict)
    @price = dict[:price]
    @quantity = dict[:quantity] || 1
  end
end
