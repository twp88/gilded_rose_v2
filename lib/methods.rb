module Methods

  def alter_backstage_quality
    self.quality += 3 if self.sell_in <= 5 && self.quality < 50
    self.quality += 2 if self.sell_in <= 11 && self.sell_in >= 6 && self.quality < 50
    self.quality += 1 if self.sell_in > 11 && self.quality < 50
    self.quality -= self.quality if self.sell_in <= 0
  end

  def alter_normal_quality
    self.quality -= 1 if self.quality > 0
    self.quality -= 2 if self.quality <= 0
  end

  def alter_aged_brie_quality
    self.quality += 1 if self.quality < 50
  end

  def alter_conjured_quality
    self.quality -= 2 if self.quality > 0
  end

  def lower_sell_in_by_one
    self.sell_in -= 1
  end

end
