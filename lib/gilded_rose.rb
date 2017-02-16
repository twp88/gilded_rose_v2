class GildedRose

  attr_accessor :items, :quality, :sell_in, :item

  def update_quality(item)
    case item.name
    when 'Backstage passes to a TAFKAL80ETC concert'
      Methods.new.alter_backstage_quality(item)
      Methods.new.lower_sell_in_by_one(item)
     when 'Aged Brie'
       Methods.new.lower_sell_in_by_one(item)
       Methods.new.alter_aged_brie_quality(item)
     when 'Conjured'
       Methods.new.alter_conjured_quality(item)
       Methods.new.lower_sell_in_by_one(item)
     when 'Sulfuras, Hand of Ragnaros'
       p 'Sulfuras, Hand of Ragnaros'
     else
       Methods.new.alter_normal_quality(item)
       Methods.new.lower_sell_in_by_one(item)
     end
  end

end
