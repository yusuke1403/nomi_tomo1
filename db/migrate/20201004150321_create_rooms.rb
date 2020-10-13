class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.references :shop, foreign_key: true
      t.string :name, null: false
      t.timestamps
    end
  end
end
