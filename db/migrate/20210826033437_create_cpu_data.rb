class CreateCpuData < ActiveRecord::Migration[6.0]
  def change
    create_table :cpu_data do |t|
      t.string :cpu_id
      t.string :part_type
      t.string :brand
      t.string :name
      t.string :item_number
      t.string :price
      t.string :cores
      t.string :threads
      t.string :base_clock
      t.string :boost_clock
      t.string :l3_cache
      t.string :socket
      t.string :link
      t.string :image

      t.timestamps
    end
  end
end
