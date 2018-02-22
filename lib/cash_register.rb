require 'pry'
class CashRegister

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
end

attr_reader  :apply_discount, :items, :void_last_transaction, :discount
attr_accessor :total

def add_item(item, price, quantity = 1)
@item = item
@price = price
@quantity = quantity

@total += (@price * @quantity)
  @quantity.times do
    @items << @item
  end
  @last_transaction = @price
end

def apply_discount
  if @discount > 0
    discount = (100 - @discount) / 100.0
    @total = @total.to_f * discount.to_f
    return "After the discount, the total comes to $#{@total.to_i}."
  else
    return "There is no discount to apply."
  end

end


def void_last_transaction
  @total -= @last_transaction
  @items.pop
end

end
