require 'card'

describe "Card" do
  let(:card) {Card.new("spade", "A")}
  context "#initialize"
  it "starts with a suit" do
    expect(card.suit).to eq("spade")
  end
  it "starts with its value" do
     expect(card.value).to eq("A")
  end

  let(:card2) {Card.new("club", "A")}
  let(:card3) {Card.new("club", "K")}
  context "#compare_with"
  it "returns the higher card if same face value" do
    expect(card.compare_with(card2)).to eq(card)
  end
  it "returns the higher card if same suit" do
    expect(card2.compare_with(card3)).to eq(card2)
  end

  context "#"








end
