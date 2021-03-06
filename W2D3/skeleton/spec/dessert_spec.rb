require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:dessert) { Dessert.new('brownie', 25, chef)}

  describe "#initialize" do

    it "sets a type" do
      expect(dessert.type).to eq('brownie')
    end
    it "sets a quantity" do
      expect(dessert.quantity).to eq(25)
    end
    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to eq([])
    end
    it "raises an argument error when given a non-integer quantity" do
      expect{Dessert.new('brownie', 'seven', chef)}.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(dessert.add_ingredient('sugar')).to eq(['sugar'])
    end
  end

  describe "#mix!" do
    before(:each) do
      dessert.add_ingredient('sugar')
      dessert.add_ingredient('flour')
      dessert.add_ingredient('eggs')
    end
    it "shuffles the ingredient array" do
      dessert.mix!
      expect(dessert.ingredients).to include('sugar','flour','eggs')
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      dessert.eat(10)
      expect(dessert.quantity).to eq(15)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect{dessert.eat(30)}.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return('Chef')
      allow(dessert).to receive(:pluralize).and_return('brownies')
      expect(dessert.serve).to eq("Chef has made 25 brownies!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      allow(chef).to receive(:bake).and_return(dessert.heat!)
      expect(dessert.temp).to eq(400)
    end
  end
end
