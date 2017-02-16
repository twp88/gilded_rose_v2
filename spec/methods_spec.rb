 require File.join(File.dirname(__FILE__), '../lib/methods')

 describe Item do

   before(:each) do
     @items = Item.new("foo", 0, 0)
     @gilded_rose = GildedRose.new
     @methods = Methods.new
   end

   context 'more specific tests for #backstage' do

     describe '#backstage' do
       it 'It expects item.sell_in to reduce by 1 ' do
          @backstage = Item.new("Backstage passes to a TAFKAL80ETC concert", 10, 40)
          expect { @methods.lower_sell_in_by_one(@backstage) }.to change{ @backstage.sell_in }.by(-1)
       end
     end

     describe '#backstage' do
       it 'It expects the quality to change by 1 if sell_in is > 11' do
         @backstage1 = Item.new("Backstage passes to a TAFKAL80ETC concert", 12, 40)
         expect { @methods.alter_backstage_quality(@backstage1) }.to change{@backstage1.quality}.by(1)
       end
     end

     describe '#backstage' do
       it 'It expects the quality to change by 2 if sell_in is < 11' do
         @backstage2 = Item.new("Backstage passes to a TAFKAL80ETC concert", 10, 40)
         expect { @methods.alter_backstage_quality(@backstage2) }.to change{@backstage2.quality}.by(2)
       end
     end

     describe '#backstage' do
       it 'It expects the quality to change by 3 if sell_in is < 6' do
         @backstage3 = Item.new("Backstage passes to a TAFKAL80ETC concert", 5, 40)
         expect { @methods.alter_backstage_quality(@backstage3) }.to change{@backstage3.quality}.by(3)
       end
     end

     describe '#backstage' do
       it 'It expects the quality go to 0 if sell_in == 0' do
         @backstage3 = Item.new("Backstage passes to a TAFKAL80ETC concert", 0, 40)
         expect { @methods.alter_backstage_quality(@backstage3) }.to change{@backstage3.quality}.by(-@backstage3.quality)
       end
     end

   end

   context 'more specific tests for #normal' do

     describe '#normal' do
       it 'It expects item.sell_in to reduce by 1 ' do
          @normal = Item.new("Normal", 10, 40)
          expect { @methods.lower_sell_in_by_one(@normal) }.to change{ @normal.sell_in }.by(-1)
       end
     end

     describe '#normal' do
       it 'It expects item.sell_in to reduce by 2 if sell_in < 0 ' do
          @normal = Item.new("Normal", 10, 0)
          expect { @methods.alter_normal_quality(@normal) }.to change{ @normal.quality }.by(-2)
       end
     end

     describe '#normal' do
       it 'It expects quality to reduce by 1 if item.quality > 0' do
          @normal = Item.new("Normal", 10, 40)
          expect { @methods.alter_normal_quality(@normal) }.to change{ @normal.quality }.by(-1)
       end
     end
   end

   context 'more specific tests for #aged_brie' do

     describe '#aged_brie' do
       it 'It expects item.sell_in to reduce by 1 ' do
          @aged_brie = Item.new("Aged Brie", 10, 40)
          expect { @methods.lower_sell_in_by_one(@aged_brie) }.to change{ @aged_brie.sell_in }.by(-1)
       end
     end

     describe '#aged_brie' do
       it 'It expects item.quality to increase by 1 if quality < 50 ' do
          @aged_brie = Item.new("Aged Brie", 10, 40)
          expect { @methods.alter_aged_brie_quality(@aged_brie) }.to change{ @aged_brie.quality }.by(+1)
       end
     end
   end

   context 'more specific tests for #conjured' do
     describe '#conjured' do
       it 'It expects quality to reduce by 2 if item.quality > 0' do
          @conjured = Item.new("Conjured", 10, 40)
          expect { @methods.alter_conjured_quality(@conjured) }.to change{ @conjured.quality }.by(-2)
       end
     end

     describe '#aged_brie' do
       it 'It expects item.sell_in to reduce by 1 ' do
          @conjured = Item.new("Conjured", 10, 40)
          expect { @methods.lower_sell_in_by_one(@conjured) }.to change{ @conjured.sell_in }.by(-1)
       end
     end
   end



 end
