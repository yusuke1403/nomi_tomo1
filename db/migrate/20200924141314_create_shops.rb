class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :name_kana
      t.string :address
      t.string :category
      t.string :tel
      t.string :open_time
      t.string :holiday
      t.decimal :latitude, :precision => 9, :scale => 6
      t.decimal :longitude, :precision => 9, :scale => 6
      t.string :pr_short
      t.text :pr_long
      t.string :url
      t.timestamps
    end
  end
end