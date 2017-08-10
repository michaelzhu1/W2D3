require_relative 'card'

class Deck

  attr_accessor :storage

  def initialize
    @storage = []
    setup_deck
  end

  def setup_deck
    Card.suits.each do |suit|
      Card.values.each do |val|
        @storage << Card.new(suit, val)
      end
    end
  end

  def shuffle_deck
    @storage.shuffle!
  end

  def count
    @storage.count
  end

  def take_hand
    raise ("Not enough cards left!") if @storage.length < 5
    @storage.shift(5)
  end

  def take_n_cards(n)
    @storage.shift(n)
  end

end
