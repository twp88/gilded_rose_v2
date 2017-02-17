class GildedRose
  require './lib/methods'

  attr_accessor :items, :quality, :sell_in, :item

  def update_quality(item)
    case item.name
    when 'Backstage passes to a TAFKAL80ETC concert'
      item.alter_backstage_quality
      item.lower_sell_in_by_one
     when 'Aged Brie'
       item.lower_sell_in_by_one
       item.alter_aged_brie_quality
     when 'Conjured'
       item.alter_conjured_quality
       item.lower_sell_in_by_one
     when 'Sulfuras, Hand of Ragnaros'
       p 'Sulfuras, Hand of Ragnaros'
     else
       item.alter_normal_quality
       item.lower_sell_in_by_one
     end
  end

end
