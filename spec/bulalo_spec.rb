require 'Bulalo'

describe Bulalo do
  
  it 'should have a price' do
    bulalo = Bulalo.new
    expect(bulalo.price).to eq 10
  end




end