class AddCreatorToProducts < ActiveRecord::Migration[6.0]
  def change
  	add_column :products, :Creator, :string
  end
end
