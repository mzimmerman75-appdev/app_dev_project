class CreatePsuData < ActiveRecord::Migration[6.0]
  def change
    create_table :psu_data do |t|
      t.string :psu_id
      t.string :part_type
      t.string :brand
      t.string :name
      t.string :item_number
      t.string :price
      t.string :wattage
      t.string :certification
      t.string :link
      t.string :image

      t.timestamps
    end
  end
end
