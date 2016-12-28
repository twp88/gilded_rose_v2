require File.join(File.dirname(__FILE__), '../lib/gilded_rose')
# require File.join(File.dirname(__FILE__), '../lib/item')


describe GildedRose do

  before(:each) do
    @items = [Item.new("foo", 0, 0)]
  end

  describe "#update_quality" do
    it "does not change the name" do
      GildedRose.new(@items).update_quality()
      expect(@items[0].name).to eq "foo"
    end
  end


end
