class RenameQualiteToQualityInLineItem < ActiveRecord::Migration[6.0]
  def change
  	rename_column :line_items, :qualite, :quality
  end
end
