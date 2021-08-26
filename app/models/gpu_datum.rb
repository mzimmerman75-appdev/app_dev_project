# == Schema Information
#
# Table name: gpu_data
#
#  id          :integer          not null, primary key
#  boost_clock :string
#  brand       :string
#  cuda_cores  :string
#  image       :string
#  item_number :string
#  link        :string
#  name        :string
#  part_type   :string
#  price       :string
#  series      :string
#  vram        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  gpu_id      :string
#
class GpuDatum < ApplicationRecord
end
