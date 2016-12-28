 require File.join(File.dirname(__FILE__), '../lib/item')

 describe Item do

   before(:each) do
     @items = [Item.new("foo", 0, 0)]
   end

   describe "#initialize" do
     it "expects everything to be initialized correctly" do
       expect(@items[0].name).to eq "foo"
     end

   end
 end
