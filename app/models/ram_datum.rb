# == Schema Information
#
# Table name: ram_data
#
#  id          :integer          not null, primary key
#  brand       :string
#  capacity    :string
#  image       :string
#  item_number :string
#  link        :string
#  mem_speed   :string
#  name        :string
#  part_type   :string
#  price       :string
#  series      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  ram_id      :string
#
class RamDatum < ApplicationRecord
end
