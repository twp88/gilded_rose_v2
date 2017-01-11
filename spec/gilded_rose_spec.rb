require File.join(File.dirname(__FILE__), '../lib/gilded_rose')
require File.join(File.dirname(__FILE__), '../lib/item')
require File.join(File.dirname(__FILE__), '../lib/methods')


describe GildedRose do

  before(:each) do
    @items = [Item.new("foo", 0, 0)]
    @backstage = [Item.new('Backstage passes to a TAFKAL80ETC concert', 10, 40)]
    @normal = Item.new('Normal', 10, 40)
    @aged_brie = Item.new('Aged Brie', 10, 40)
    @gr = GildedRose.new
  end

  describe "#update_quality" do
    it "does not change the name" do
      GildedRose.new.update_quality(@items)
      expect(@items[0].name).to eq "foo"
    end
  end

  describe "#update_quality" do
    it "should change the quality of backstage" do
      p @backstage
      @gr.update_quality(@backstage)
      expect(@backstage.quality).to eq 2
      #expect { @gr.update_quality(@backstage) }.to change{ @backstage.quality }.by(2)
      p @backstage
    end
  end

  describe "#update_quality" do
    it "should change the sell_in of normal" do
      expect { @gr.update_quality(@normal) }.to change{ @normal.quality }.by(-1)
    end
  end

  describe "#update_quality" do
    it "should change the quality of aged_brie" do
      p 'sup1'
      p @aged_brie
      expect { @gr.update_quality(@aged_brie) }.to change{ @aged_brie.quality }.by(1)
      p 'sup2'
      p @aged_brie
    end
  end

end
