class RemovePartsFromProducts < ActiveRecord::Migration[6.0]
  def change
  	remove_column :products, :email, :string
  	remove_column :products, :Creator, :string
  	remove_column :products, :part_price, :integer
  	remove_column :products, :part_number, :integer
  end
end
