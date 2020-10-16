class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title ,#limit:40 -- we can set limit using limit modifier
      t.integer :price
      t.string :description

      t.timestamps
    end
  end
end
