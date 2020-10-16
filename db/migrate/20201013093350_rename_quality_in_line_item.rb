class RenameQualityInLineItem < ActiveRecord::Migration[6.0]
  def change
  	  	rename_column :line_items, :quality, :quantity

  end
end
