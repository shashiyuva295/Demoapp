class AddEmailToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :email, :string
  end
end
