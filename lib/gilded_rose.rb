class GildedRose

  attr_accessor :items, :quality, :sell_in


  def update_quality(item)
     case item.name
     when 'Backstage passes to a TAFKAL80ETC concert'
       Methods.new(item).backstage
     end
  end

end
