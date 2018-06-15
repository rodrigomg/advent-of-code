class LineItem

  attr_reader :item

  def initialize(dict)
    @item = dict[:item]
  end

end
