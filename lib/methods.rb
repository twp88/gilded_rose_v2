class Methods

  attr_reader :name, :quality

  def initialize
    @name = ''
  end

  def aged_brie(item)
    @item = item
    @name = 'Aged Brie'
    @item.sell_in -= 1
    @item.quality += 1 if @item.quality < 50
  end

  def sulfuras(item)
    @item = item
    @name = 'Sulfuras, Hand of Ragnaros'
  end

  def backstage(item)
    @item = item
    @name = 'Backstage passes to a TAFKAL80ETC concert'
    @item.quality += 3 if @item.sell_in <= 5 && @item.quality < 50
    @item.quality += 2 if @item.sell_in <= 11 && @item.sell_in >= 6 && @item.quality < 50
    @item.quality += 1 if @item.sell_in > 11 && @item.quality < 50
    @item.quality -= @item.quality if @item.sell_in <= 0
    @item.sell_in -= 1
  end

  def normal(item)
    @item = item
    @name = 'Normal'
    @item.quality -= 1 if @item.quality > 0
    @item.quality -= 2 if @item.quality <= 0
    @item.sell_in -= 1
  end


end
