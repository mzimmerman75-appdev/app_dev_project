class CreateMoboData < ActiveRecord::Migration[6.0]
  def change
    create_table :mobo_data do |t|
      t.string :mobo_id
      t.string :brand
      t.string :name
      t.string :item_number
      t.string :price
      t.string :socket
      t.string :chipset
      t.string :size
      t.string :ram
      t.string :link
      t.string :image

      t.timestamps
    end
  end
end
