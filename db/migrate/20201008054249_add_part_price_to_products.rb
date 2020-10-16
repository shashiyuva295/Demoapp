class AddPartPriceToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :part_price, :integer
    add_index :products, :part_price
  end
end
