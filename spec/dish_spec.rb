require 'Dish'

describe Dish do

  it 'should have food list' do
    dish = Dish.new
    expect(dish.list).to include "sisig"
  end

end