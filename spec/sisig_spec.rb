require 'Sisig'

describe Sisig do
  
  it 'should have a price' do
    sisig = Sisig.new
    expect(sisig.price).to eq 7
  end

end