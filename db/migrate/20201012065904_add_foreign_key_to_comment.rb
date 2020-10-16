class AddForeignKeyToComment < ActiveRecord::Migration[6.0]
  def change
  	    add_reference :comments, :user, index: true
  	    add_reference :comments, :post, index: true
  end
end
