require File.join(File.dirname(__FILE__), '../lib/gilded_rose')
require File.join(File.dirname(__FILE__), '../lib/item')


describe GildedRose do

  before(:each) do
    @items = [Item.new("foo", 0, 0)]
    @backstage = [Item.new('Backstage passes to a TAFKAL80ETC concert', 10, 40)]
  end

  describe "#update_quality" do
    it "does not change the name" do
      GildedRose.new.update_quality(@items)
      expect(@items[0].name).to eq "foo"
    end
  end

  describe "#update_quality" do
    it "should change the quality thing of backstage" do
      @backstage = [Item.new('Backstage passes to a TAFKAL80ETC concert', 10, 40)]
      expect { GildedRose.new.update_quality(@backstage) }.to change{ @backstage.quality }.by(2)
    end
  end



end
