require 'rspec'
require 'hand'

describe Hand do
  let(:deck) { double(:deck, :draw => Card.new(:jack, :clubs)) }
  subject(:hand) { Hand.new(deck) }

  describe '#discard' do
    it 'shrinks hand size after' do
      hand.discard(0)
      expect(hand.size).to eq(4)
    end

    it 'drops multiple cards' do
      hand.discard(1, 2, 3)
      expect(hand.size).to eq(2)
    end

    it 'raises an exception if discarding more than 3' do
      expect do
        hand.discard(1, 2, 3, 4)
      end.to raise_exception
    end

    it 'raises an exception for invalid indices' do
      expect do
        hand.discard(5)
      end.to raise_exception
    end
  end

  describe '#pickup' do
    it 'draws from the deck' do
      hand.discard(0)
      hand.pickup(1)
      expect(hand.size).to eq(5)
    end

    it 'raises an exception if we do not pick up the same number of cards as we discarded' do
      expect do
        hand.discard(1, 2)
        hand.pickup(3)
      end.to raise_exception
    end
  end

  it 'has five cards' do
    expect(hand.size).to eq(5)
  end

  describe '#one_pair?' do
    it 'returns true if hand has one pair'

    it 'returns false if no pairs'
  end

  describe '#two_pair?'

  describe '#three_of_a_kind?'

  describe '#straight?'

  describe '#flush?'

  describe '#full_house?'

  describe '#four_of_a_kind?'

  describe '#straight_flush?'

  describe '#royal_flush?'



end