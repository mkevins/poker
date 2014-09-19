class Card
  attr_reader :value, :suit

  VALUE_STRINGS = {
    2 => "Two",
    3 => "Three",
    4 => "Four",
    5 => "Five",
    6 => "Six",
    7 => "Seven",
    8 => "Eight",
    9 => "Nine",
    10 => "Ten",
    jack: "Jack",
    queen: "Queen",
    king: "King",
    ace: "Ace"
  }

  SUIT_STRINGS = {
    hearts: "Hearts",
    diamonds: "Diamonds",
    clubs: "Clubs",
    spades: "Spades"
  }

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def to_s
    "#{VALUE_STRINGS[self.value]} of #{SUIT_STRINGS[self.suit]}"
  end

  def ==(card)
    self.value == card.value && self.suit == card.suit
  end

end