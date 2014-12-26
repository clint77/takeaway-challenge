require 'Dish'

describe Dish do
  
  it 'should have a name' do
    dish = Dish.new
    expect(dish).to have_name
  end

  it 'should have a price' do
    dish = Dish.new
    expect(dish).to have_price
  end

  it 'should have quantity' do
    dish = Dish.new
    expect(dish.quantity).to eq 1
  end

  # it ''







end