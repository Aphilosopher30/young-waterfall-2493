class CreateActors < ActiveRecord::Migration[5.2]
  def change
    create_table :actors do |t|
      t.string :name
      t.boolean :currently_working
      t.integer :age

      t.timestamps

    end
  end
end
