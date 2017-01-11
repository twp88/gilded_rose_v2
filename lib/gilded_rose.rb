class GildedRose

  attr_accessor :items, :quality, :sell_in


  def update_quality(item)
     item
     case item.name
     when 'Backstage passes to a TAFKAL80ETC concert'
       Methods.new.backstage(item)
     when 'Aged Brie'
       Methods.new.backstage(item)
     else
       Methods.new.normal(item)
     end
  end

end
