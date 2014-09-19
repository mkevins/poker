class Hand
  def initialize(deck)
    @deck = deck
    @cards = []
    5.times { @cards << deck.draw }
  end

  def discard(*card_locs)
    raise 'cannot discard more than 3 cards' if card_locs.length > 3
    raise 'card locations out of bounds' if card_locs.any? { |loc| loc > 4 }
    card_locs.sort.reverse.each do |loc|
      @cards.delete_at(loc)
    end
  end

  def pickup(n)
    raise 'cannot pickup more cards than discarded' unless n + self.size == 5
    n.times { @cards << @deck.draw }
  end

  def size
    @cards.length
  end
end