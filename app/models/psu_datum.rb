# == Schema Information
#
# Table name: psu_data
#
#  id            :integer          not null, primary key
#  brand         :string
#  certification :string
#  image         :string
#  item_number   :string
#  link          :string
#  name          :string
#  part_type     :string
#  price         :string
#  wattage       :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  psu_id        :string
#
class PsuDatum < ApplicationRecord
end
