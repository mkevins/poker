require 'rspec'
require 'card'

describe Card do
  subject(:card) { Card.new(:jack, :clubs)}

  it 'has a suit' do
    expect(card.suit).to eq(:clubs)
  end

  it 'has a value' do
    expect(card.value).to eq(:jack)
  end

  it 'renders to a string' do
    expect(card.to_s).to eq("Jack of Clubs")
  end
end