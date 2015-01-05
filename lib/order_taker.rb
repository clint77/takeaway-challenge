

class Order_taker

  def initialize
    @order_taker = {}
  end

  def order(dish, quantity)
    @order_taker[dish] = quantity.to_int
    return @order_taker
  end

  def total(dish)
    @total = 0
    dish.each do |dish, quantity|
      @price = 7  if dish == :sisig
      @price = 10 if dish == :bulalo
      @price = 6  if dish == :lechon_kawali
      @total_per_dish = @price * quantity
      @total = @total + @total_per_dish
    end
    return @total
  end

end
