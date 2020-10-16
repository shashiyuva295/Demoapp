class RemoveFromComment < ActiveRecord::Migration[6.0]
  def change
  	remove_column :comments, :announcement_id
  	remove_column :comments, :commentable_id
  	remove_column :comments, :commentable_type
  end
end
