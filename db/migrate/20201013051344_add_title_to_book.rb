class AddTitleToBook < ActiveRecord::Migration[6.0]
  def change
  	add_column :books, :title, :string
  	remove_column :books, :published_at
  end
end
