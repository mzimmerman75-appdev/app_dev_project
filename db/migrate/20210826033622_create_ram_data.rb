class CreateRamData < ActiveRecord::Migration[6.0]
  def change
    create_table :ram_data do |t|
      t.string :ram_id
      t.string :part_type
      t.string :series
      t.string :brand
      t.string :name
      t.string :item_number
      t.string :price
      t.string :mem_speed
      t.string :capacity
      t.string :link
      t.string :image

      t.timestamps
    end
  end
end
