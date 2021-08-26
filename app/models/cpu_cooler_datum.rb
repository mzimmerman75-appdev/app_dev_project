# == Schema Information
#
# Table name: cpu_cooler_data
#
#  id           :integer          not null, primary key
#  air_or_water :string
#  brand        :string
#  fan_count    :string
#  fan_size     :string
#  image        :string
#  item_number  :string
#  link         :string
#  max_rpm      :string
#  name         :string
#  part_type    :string
#  price        :string
#  tdp          :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  cooler_id    :string
#
class CpuCoolerDatum < ApplicationRecord
end
