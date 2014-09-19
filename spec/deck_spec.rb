require 'rspec'
require 'deck'

describe 'deck' do
  subject(:deck) { Deck.new }

  it 'initializes with 52 cards' do
    expect(deck.size).to eq(52)
  end

  describe '#draw' do
    it 'returns a card' do
      expect(deck.draw.is_a?(Card)).to eq(true)
    end

    it 'reduces the deck size' do
      deck.draw
      expect(deck.size).to eq(51)
    end

    it 'contains unique cards' do
      drawn_cards = []
      51.times { drawn_cards << deck.draw }
      expect(drawn_cards.include?(deck.draw)).to eq(false)
    end

    it 'raises exception if deck is empty' do
      52.times { deck.draw }
      expect do
        deck.draw
      end.to raise_exception
    end
  end
end