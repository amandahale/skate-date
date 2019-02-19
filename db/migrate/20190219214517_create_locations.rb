class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.string :image_url
      t.string :weblink

      t.timestamps
    end
  end
end