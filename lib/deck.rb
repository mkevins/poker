require 'card'

class Deck
  def initialize
    fill_deck
  end

  def draw
    raise 'empty deck' if size == 0

    @cards.pop
  end

  def size
    @cards.length
  end

  private

  def fill_deck
    @cards = []
    Card::VALUE_STRINGS.keys.each do |value|
      Card::SUIT_STRINGS.keys.each do |suit|
        @cards << Card.new(value, suit)
      end
    end
    @cards.shuffle!

    nil
  end
end