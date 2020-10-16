class AddAuthorIdToAuthor < ActiveRecord::Migration[6.0]
  def change
  	add_column :authors, :author_id, :string
  end
end
