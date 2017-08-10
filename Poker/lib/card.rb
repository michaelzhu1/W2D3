class Card

  SUITS = %w(club diamond heart spade)
  VALUES = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  NUM_VALUES = {
    "2" => 2,
    "3" => 3,
    "4" => 4,
    "5" => 5,
    "6" => 6,
    "7" => 7,
    "8" => 8,
    "9" => 9,
    "10" => 10,
    "J" => 11,
    "Q" => 12,
    "K" => 13,
    "A" => 14,
  }
  attr_reader :suit, :value
  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def compare_with(card)
    num_val1 = NUM_VALUES[self.value]
    num_val2 = NUM_VALUES[card.value]

    if num_val1 == num_val2
      suit_val1 = SUITS.find_index(self.suit)
      suit_val2 = SUITS.find_index(card.suit)

      suit_val1 > suit_val2 ? self : card
    else
      num_val1 > num_val2 ? self : card
    end
  end

  def to_symbol #outputs a nicely formatted thing for rendering

  end

  def self.suits
    SUITS
  end

  def self.values
    VALUES
  end
  
end
