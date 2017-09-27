class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :name
      t.string :surname
      t.integer :telegram_id
      t.boolean :sex
      t.float :predicted_sex
      t.string :token

      t.timestamps
    end
    add_index :people, :token, unique: true
  end
end
