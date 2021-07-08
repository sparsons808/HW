require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }

  describe "#initialize" do
    subject(:dessert) { Dessert.new }

    it "sets a type" do
      expect(dessert.type).to eq(type)
    end
      

    it "sets a quantity" do
      expect(dessert.qauntity).to eq(qauntity)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to eq([])
    end

    context "when incorrect type is given to quantity" do 
      it "raises an argument error when given a non-integer quantity" do
        expect { dessert.quatity.is_a?(String) }.to raise_error(ArgumentError)
      end
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array"
  end

  describe "#mix!" do
    it "shuffles the ingredient array"
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end
