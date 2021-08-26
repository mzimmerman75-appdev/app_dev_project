class CreateCaseData < ActiveRecord::Migration[6.0]
  def change
    create_table :case_data do |t|
      t.string :case_id
      t.string :part_type
      t.string :brand
      t.string :name
      t.string :item_number
      t.string :price
      t.string :size
      t.string :color
      t.string :link
      t.string :image

      t.timestamps
    end
  end
end
