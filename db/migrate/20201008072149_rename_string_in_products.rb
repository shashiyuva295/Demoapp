class RenameStringInProducts < ActiveRecord::Migration[6.0]
  def change
  	rename_column :products, :string, :details
  end
end
