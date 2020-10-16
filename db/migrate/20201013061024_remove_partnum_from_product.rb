class RemovePartnumFromProduct < ActiveRecord::Migration[6.0]
  def change
  	remove_column :products, :partnum
  	remove_column :products, :details
  end
end
