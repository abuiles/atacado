class CreateGoldPrices < ActiveRecord::Migration
  def change
    create_table :gold_prices do |t|
      t.float :value

      t.timestamps
    end
  end
end
