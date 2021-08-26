# == Schema Information
#
# Table name: ssd_data
#
#  id           :integer          not null, primary key
#  brand        :string
#  image        :string
#  item_number  :string
#  link         :string
#  name         :string
#  part_type    :string
#  price        :string
#  read_speed   :string
#  storage_size :string
#  write_speed  :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  storage_id   :string
#
class SsdDatum < ApplicationRecord
end
