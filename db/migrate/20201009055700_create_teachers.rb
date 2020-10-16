class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :Student
      t.string :Announcement

      t.timestamps
    end
  end
end
