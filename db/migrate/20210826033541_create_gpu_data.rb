class CreateGpuData < ActiveRecord::Migration[6.0]
  def change
    create_table :gpu_data do |t|
      t.string :gpu_id
      t.string :part_type
      t.string :series
      t.string :brand
      t.string :name
      t.string :item_number
      t.string :price
      t.string :cuda_cores
      t.string :boost_clock
      t.string :vram
      t.string :link
      t.string :image

      t.timestamps
    end
  end
end
