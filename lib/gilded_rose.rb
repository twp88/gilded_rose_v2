class GildedRose

  attr_accessor :items, :quality, :sell_in


  def update_quality(item)
     if item.name == 'Backstage passes to a TAFKAL80ETC concert'
       Methods.new.backstage(item)
     elsif item.name == 'Aged Brie'
       Methods.new.aged_brie(item)
     else
       Methods.new.normal(item)
     end
  end

end
