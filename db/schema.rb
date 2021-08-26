# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_26_033801) do

  create_table "case_data", force: :cascade do |t|
    t.string "case_id"
    t.string "part_type"
    t.string "brand"
    t.string "name"
    t.string "item_number"
    t.string "price"
    t.string "size"
    t.string "color"
    t.string "link"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cpu_cooler_data", force: :cascade do |t|
    t.string "cooler_id"
    t.string "part_type"
    t.string "brand"
    t.string "name"
    t.string "item_number"
    t.string "price"
    t.string "fan_size"
    t.string "fan_count"
    t.string "tdp"
    t.string "air_or_water"
    t.string "max_rpm"
    t.string "link"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cpu_data", force: :cascade do |t|
    t.string "cpu_id"
    t.string "part_type"
    t.string "brand"
    t.string "name"
    t.string "item_number"
    t.string "price"
    t.string "cores"
    t.string "threads"
    t.string "base_clock"
    t.string "boost_clock"
    t.string "l3_cache"
    t.string "socket"
    t.string "link"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gpu_data", force: :cascade do |t|
    t.string "gpu_id"
    t.string "part_type"
    t.string "series"
    t.string "brand"
    t.string "name"
    t.string "item_number"
    t.string "price"
    t.string "cuda_cores"
    t.string "boost_clock"
    t.string "vram"
    t.string "link"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mobo_data", force: :cascade do |t|
    t.string "mobo_id"
    t.string "brand"
    t.string "name"
    t.string "item_number"
    t.string "price"
    t.string "socket"
    t.string "chipset"
    t.string "size"
    t.string "ram"
    t.string "link"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "psu_data", force: :cascade do |t|
    t.string "psu_id"
    t.string "part_type"
    t.string "brand"
    t.string "name"
    t.string "item_number"
    t.string "price"
    t.string "wattage"
    t.string "certification"
    t.string "link"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ram_data", force: :cascade do |t|
    t.string "ram_id"
    t.string "part_type"
    t.string "series"
    t.string "brand"
    t.string "name"
    t.string "item_number"
    t.string "price"
    t.string "mem_speed"
    t.string "capacity"
    t.string "link"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ssd_data", force: :cascade do |t|
    t.string "storage_id"
    t.string "part_type"
    t.string "brand"
    t.string "name"
    t.string "item_number"
    t.string "price"
    t.string "storage_size"
    t.string "read_speed"
    t.string "write_speed"
    t.string "link"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
