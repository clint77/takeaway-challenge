require 'Lechon_kawali'

describe Lechon_kawali do
  
  it 'has a price' do
    lechon_kawali = Lechon_kawali.new
    expect(lechon_kawali.price).to eq 6
  end



end