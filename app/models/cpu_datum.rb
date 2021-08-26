# == Schema Information
#
# Table name: cpu_data
#
#  id          :integer          not null, primary key
#  base_clock  :string
#  boost_clock :string
#  brand       :string
#  cores       :string
#  image       :string
#  item_number :string
#  l3_cache    :string
#  link        :string
#  name        :string
#  part_type   :string
#  price       :string
#  socket      :string
#  threads     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  cpu_id      :string
#
class CpuDatum < ApplicationRecord
end
