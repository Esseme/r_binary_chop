require "binary_search"

RSpec.describe "binary_search" do
  context "when the array is empty" do
    it "returns -1" do
      array = []
      target = 4
      value = BinaryChop.new(array, target).r_binary_search

      expect(value).to eq(-1)
    end
  end

  context "when the array only has one value" do
    it "returns the index of the target" do
      array = [1]
      target = 1
      value = BinaryChop.new(array, target).r_binary_search

      expect(value).to eq(0)
    end
  end

  context "when the target is in the array" do
    it "returns the index of the target" do
      array = [1, 3, 5, 7]
      target = 3
      value = BinaryChop.new(array, target).r_binary_search

      expect(value).to eq(1)
    end
  end
end
