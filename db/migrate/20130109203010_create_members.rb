class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :last_name
      t.string :first_name
      t.string :child_names
      t.text :address
      t.string :home_phone
      t.string :work_phone
      t.string :cell_phone

      t.timestamps
    end
  end
end
