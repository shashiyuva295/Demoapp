class RemoveNameFromBook < ActiveRecord::Migration[6.0]
  def change
  	  remove_column :books, :name
  end
end
