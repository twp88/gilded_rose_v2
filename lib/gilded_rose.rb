class GildedRose

  attr_accessor :items, :quality, :sell_in, :item

  def update_quality(item)
    case item.name
    when 'Backstage passes to a TAFKAL80ETC concert'
       Methods.new.backstage(item)
     when 'Aged Brie'
       Methods.new.aged_brie(item)
     when 'Sulfuras, Hand of Ragnaros'
       Methods.new.sulfuras(item)
     when 'Conjured'
       Methods.new.conjured(item)
     else
       Methods.new.normal(item)
     end
  end

end
