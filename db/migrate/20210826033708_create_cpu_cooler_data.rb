class CreateCpuCoolerData < ActiveRecord::Migration[6.0]
  def change
    create_table :cpu_cooler_data do |t|
      t.string :cooler_id
      t.string :part_type
      t.string :brand
      t.string :name
      t.string :item_number
      t.string :price
      t.string :fan_size
      t.string :fan_count
      t.string :tdp
      t.string :air_or_water
      t.string :max_rpm
      t.string :link
      t.string :image

      t.timestamps
    end
  end
end
