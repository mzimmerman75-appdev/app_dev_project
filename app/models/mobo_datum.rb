# == Schema Information
#
# Table name: mobo_data
#
#  id          :integer          not null, primary key
#  brand       :string
#  chipset     :string
#  image       :string
#  item_number :string
#  link        :string
#  name        :string
#  price       :string
#  ram         :string
#  size        :string
#  socket      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  mobo_id     :string
#
class MoboDatum < ApplicationRecord
end
