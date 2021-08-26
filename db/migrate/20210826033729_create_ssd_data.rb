class CreateSsdData < ActiveRecord::Migration[6.0]
  def change
    create_table :ssd_data do |t|
      t.string :storage_id
      t.string :part_type
      t.string :brand
      t.string :name
      t.string :item_number
      t.string :price
      t.string :storage_size
      t.string :read_speed
      t.string :write_speed
      t.string :link
      t.string :image

      t.timestamps
    end
  end
end
