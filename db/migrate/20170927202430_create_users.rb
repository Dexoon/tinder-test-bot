class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.references :chat, foreign_key: true
      t.references :person, foreign_key: true
      t.integer :matches, array: true, default: []
      t.string :token

      t.timestamps
    end
    add_index :users, :token, unique: true
  end
end
