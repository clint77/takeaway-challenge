require 'Order_taker'

# let (:order_taker) Order_taker.new

describe Order_taker do
  context 'can take number of order per dish' do
    it 'can take number of order for sisig' do
      order_taker = Order_taker.new
      quantity = 2
      dish_order = order_taker.order(:sisig, quantity)
      expect(dish_order[:sisig]).to eq 2
    end

    it 'can take number of order for bulalo' do
      order_taker = Order_taker.new
      quantity = 3
      dish_order = order_taker.order(:bulalo, quantity)
      expect(dish_order[:bulalo]).to eq 3
    end

    it 'can take number of order for lechon_kawali' do
      order_taker = Order_taker.new
      lechon_kawali = Lechon_kawali.new
      quantity = 3
      dish_order = order_taker.order(:lechon_kawali, quantity)
      expect(dish_order[:lechon_kawali]).to eq 3
    end
  end
  
  context 'should have total amount for dish ordered' do
    it 'should have a total amount for sisig ordered' do
      order_taker = Order_taker.new
      quantity = 3
      dish_order = order_taker.order(:sisig, quantity)
      total = order_taker.total(dish_order)
      expect(total).to eq 21
    end

    it 'should have total amount for bulalo ordered' do
      order_taker = Order_taker.new
      quantity = 3
      dish_order = order_taker.order(:bulalo, quantity)
      total = order_taker.total(dish_order)
      expect(total).to eq 30
    end

    it 'should have total amount for bulalo ordered' do
      order_taker = Order_taker.new
      quantity = 3
      dish_order = order_taker.order(:lechon_kawali, quantity)
      total = order_taker.total(dish_order)
      expect(total).to eq 18
    end

  end

  it 'should have total amount if dishes ordered together' do
    order_taker = Order_taker.new
    quantity = 3
    dish_order = order_taker.order(:sisig, quantity)
    total = order_taker.total(dish_order)
    dish_order = order_taker.order(:bulalo, quantity)
    total = order_taker.total(dish_order)
    dish_order = order_taker.order(:lechon_kawali, quantity)
    total = order_taker.total(dish_order)
    expect(total).to eq 69
  end










end