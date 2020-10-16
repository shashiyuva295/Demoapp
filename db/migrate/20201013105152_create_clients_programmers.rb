class CreateClientsProgrammers < ActiveRecord::Migration[6.0]
  def change
    create_table :clients_programmers do |t|
      t.references :programmer, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true
    end
  end
end
