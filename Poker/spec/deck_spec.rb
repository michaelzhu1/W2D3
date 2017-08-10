require 'deck'

describe "Deck" do
  let (:deck) {Deck.new}
  context "#initialize"
  it "start with 52 cards" do
    expect(deck.storage.length).to eq(52)
  end
  it "store cards within an array" do
    expect(deck.storage).to be_a(Array)
  end
  it "deck includes 13 cards of the same suit" do
    expect(deck.storage.select do |card_obj|
      card_obj.suit == "spade"
    end.count).to eq(13)
  end

  context "#shuffle_deck"
  it "shuffles the deck" do
    deck_storage_dup = deck.storage.dup
    deck.shuffle_deck
    expect(deck.storage).to_not eq(deck_storage_dup)
  end

  context "#count"
  it "returns how many cards are in the deck" do
    expect(deck.count).to eq(52)
  end

  context "take_hand"
  it "removes 5 cards from deck storage" do
    deck.take_hand
    expect(deck.storage.length).to eq(47)
  end
  it "returns 5 cards" do
    expect(deck.take_hand.length).to eq(5)
  end
  it "raises error if not enough cards left in deck" do
    deck.storage = deck.storage[0...4]
    expect {deck.take_hand}.to raise_error("Not enough cards left!")
  end
end
