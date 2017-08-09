require 'remove_dups'

describe "#my_uniq" do
  let(:start_array) { Array.new(5) { rand(10) } }
  it "returns unique values in the array" do
    start_array = [3, 2, 1, 3, 3, 3]
    expect(start_array.my_uniq).to eq(start_array.uniq)
  end
  it "returns and array" do
    expect(start_array.my_uniq).to be_a(Array)
  end

end
