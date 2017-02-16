class Methods

  def alter_backstage_quality(item)
    item.quality += 3 if item.sell_in <= 5 && item.quality < 50
    item.quality += 2 if item.sell_in <= 11 && item.sell_in >= 6 && item.quality < 50
    item.quality += 1 if item.sell_in > 11 && item.quality < 50
    item.quality -= item.quality if item.sell_in <= 0
  end

  def alter_normal_quality(item)
    item.quality -= 1 if item.quality > 0
    item.quality -= 2 if item.quality <= 0
  end

  def alter_aged_brie_quality(item)
    item.quality += 1 if item.quality < 50
  end

  def alter_conjured_quality(item)
    item.quality -= 2 if item.quality > 0
  end

  def lower_sell_in_by_one(item)
    item.sell_in -= 1
  end

end
