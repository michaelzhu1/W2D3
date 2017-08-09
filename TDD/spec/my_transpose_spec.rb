require 'my_transpose'

describe "#my_transpose" do
  let (:row) { [[0, 1, 2], [3, 4, 5], [6, 7, 8]] }
  it "turns and array of rows into array of columns" do
    expect(my_transpose(row)).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
   end

  it "returns an array" do
    expect(my_transpose(row)).to be_a(Array)
  end

end
