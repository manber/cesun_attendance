class CreateTeachers < ActiveRecord::Migration
  def self.up
    create_table :teachers do |t|
      t.string :control_number, :null => false
      t.string :name
      t.string :paternal_surname
      t.string :maternal_surname
      t.integer :user_id
      t.timestamps
    end
  end

  def self.down
    drop_table :teachers
  end
end
