class AddIndexToProducts < ActiveRecord::Migration[6.0]
  def change
  	add_column :products, :partnum, :integer
  	add_index :products, :partnum
  end
end
