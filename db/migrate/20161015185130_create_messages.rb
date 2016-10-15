class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :name
      t.text :encrypted_body
      t.text :encrypted_body_iv

      t.timestamps
    end

    add_index :messages, :name
  end
end
