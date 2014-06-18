require 'rspec'
require_relative 'contact'
 
describe Contact do
 
  describe "initialization" do
 
  end
 
  describe "#to_s" do
 
  end
 
  # use . for class methods
  describe ".new" do
    it "takes name a new contact and ships it to our array" do 
      Contact.new("bill", "asd@z.com")
      @@contacts << Contact.new
    end
  end
 
  # use . for class methods
  describe ".find" do
 
  end
 
  # use . for class methods
  describe ".all" do
    it "returns an array of hashes (contact)" do 
      

    end
  end
 
end