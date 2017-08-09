require 'two_sum'

describe "#two_sum" do
  let(:pairs) {[-1, 0, 2, -2, 1]}

  it "returns an array" do
    expect(pairs.two_sum).to be_a(Array)
  end

  it "returns the index pairs when values sum up to zero" do
    expect(pairs.two_sum).to eq([[0, 4], [2, 3]])
  end



end
