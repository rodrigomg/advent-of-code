class Order

  def initialize
    @entries = []
  end

  def add_entry(entry)
    @entries << entry
  end

  def total
    t = 0
    @entries.each do |line_item|
      t = t + (line_item.item.quantity * line_item.item.price.amount)
    end
    Money.new(t.round(2), :USD)
  end

end
